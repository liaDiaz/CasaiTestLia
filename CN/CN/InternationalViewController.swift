//
//  InternationalViewController.swift
//  CN
//
//  Created by Lia Díaz on 4/6/21.
//  Copyright © 2021 Lia Díaz. All rights reserved.
//

import UIKit

class InternationalViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    var key = "bd9c7887770b43ac9bbdabc3055993a7"

    var en = "https://newsapi.org/v2/everything?q=bitcoin&apiKey=061e21cbea8c42d6a846fb82598bbf18"
    var arrayApis: [String] = []

    var articlesNB: [[String: Any]] = []
    
    
    @IBOutlet weak var lAps: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("apisdeInterNat", self.arrayApis)
        
        if let url = URL(string:  en){
            do{
                let newsB = try? Data(contentsOf: url)
                if let jsonB = try JSONSerialization.jsonObject(with: newsB!, options: []) as? [String: Any] {
                    articlesNB = jsonB["articles"] as! [[String: Any]]
                    print(articlesNB )
                }
            }catch{
                print("conents could not be loaded")
            }
        }else{
            print("the url was bad!")
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func interSport(_ sender: Any) {
       intSport ()
        
        
    }
  
    
    func intSport ()-> String{
        let endS: String = "sports"
        let endpointBussInt  =
        "https://newsapi.org/v2/top-headlines?country=mx&category=\(endS)&apiKey=\(key)"
        return endpointBussInt
        
    }
    
    func intBuss ()-> String{
        let endB: String = "business"
        let endpointBussInt  =
        "https://newsapi.org/v2/top-headlines?country=mx&category=\(endB)&apiKey=\(key)"
        return endpointBussInt
        
    }
 
    
    @IBAction func interBussines(_ sender: Any) {
         intBuss()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articlesNB.count
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "myCellIntenational", for: indexPath) as! InternationalTableViewCell
        
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "myCellIntenational") as! InternationalTableViewCell
        }
        let objectB = articlesNB[indexPath.row]
        let titleB:String = objectB["title"] as! String
        let fechaB:String = objectB["publishedAt"] as! String
        let imageNC: String = objectB["urlToImage"] as! String
        let imageUrl: URL = URL(string: imageNC)!
        let image = try! UIImage(withContentsOfUrl: imageUrl)
        let targetSizee = CGSize(width: 80, height: 100)
        let scaledImage = image!.scalePreservingAspectRatio(
            targetSize: targetSizee
        )
        
        
        
        
        
        cell.tittleNI.text =  titleB
        cell.fotoNew.image = scaledImage
        cell.fecha.text = fechaB
        
        
        
        return cell
    }
    
    
    
    
    
    
    
    
   
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToInternationalSports"{
            //esto quiero que me castes como resultados view controller
            let interSportVista=segue.destination as! InterntationalSportsViewController
                        
        }
        if segue.identifier == "goToInternationalBussines"{
            //esto quiero que me castes como resultados view controller
            let interBussinesVista=segue.destination as! InternationalBussinesViewController
            
        }
        
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
    
    
    
    
    

}
