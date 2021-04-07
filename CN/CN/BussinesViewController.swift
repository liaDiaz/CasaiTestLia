//
//  BussinesViewController.swift
//  CN
//
//  Created by Lia Díaz on 4/5/21.
//  Copyright © 2021 Lia Díaz. All rights reserved.
//

import UIKit


class BussinesViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet weak var endpoint: UILabel!
    var endpNB : String = ""
    
    var en = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=061e21cbea8c42d6a846fb82598bbf18"
    
    var articlesNB: [[String: Any]] = []
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.endpoint.text! = endpNB
        print("endpoint bussines:" + self.endpoint.text! )
        
        if let url = URL(string:  self.endpoint.text!){
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
    
    
        // Do any additional setup after loading the view.
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articlesNB.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "myCellB", for: indexPath)
        
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "myCellB")
        }
        let objectB = articlesNB[indexPath.row]
        
        let titleB:String = objectB["title"] as! String
        let imageNC: String = objectB["urlToImage"] as! String
        let imageUrl: URL = URL(string: imageNC)!
        let image = try! UIImage(withContentsOfUrl: imageUrl)
        let targetSizee = CGSize(width: 80, height: 100)
        let scaledImage = image!.scalePreservingAspectRatio(
            targetSize: targetSizee
        )
        cell.imageView!.image = scaledImage
      
        cell.textLabel?.text =  titleB
        
        
        
        
        return cell
    }
        
        
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
