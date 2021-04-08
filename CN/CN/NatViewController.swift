//
//  NatViewController.swift
//  CN
//
//  Created by Lia Díaz on 4/5/21.
//  Copyright © 2021 Lia Díaz. All rights reserved.
//

import UIKit




class NatViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    var endp : String = ""
    var code : String = ""
    @IBOutlet weak var end: UILabel!
     @IBOutlet weak var codeN: UILabel!
    var endt = ""
    var poni = "https://newsapi.org/v2/top-headlines?country=us&apiKey=944e77547f7b417a98d2ce1e148f04e6"
    var key = "bd9c7887770b43ac9bbdabc3055993a7"
    var articlesN: [[String: Any]] = []
    let locale = Locale.current
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.end.text! = endp
        self.codeN.text! = code
        print("esto: " + self.end.text!)
        
    
        
        
        
        if let url = URL(string: poni){
            do{
                let news = try? Data(contentsOf: url)
                if let json = try JSONSerialization.jsonObject(with: news!, options: []) as? [String: Any] {
                    articlesN = json["articles"] as! [[String: Any]]
                }
            }catch{
                print("conents could not be loaded")
            }
        }else{
            print("the url was bad!")
        }
    }
    
    
    @IBAction func Sports(_ sender: Any) {
         let catS = ""
         cateSport(categoryS: catS)
        
    }
    @IBAction func bussiness(_ sender: Any) {
         let catB = " "
        cateSport(categoryS: catB)
    }
    
    func cateSport(categoryS :String)-> String{
        let codC = code
        let category  = "Sports"
        let cateU = categoryS
        var contCountry : Int = 0
        var endpointSport:String = ""
        let country_codesUser = ["ae","ar","at","au","be",
                             "bg","br","ca","ch","cn",
                             "co","cu","cz","de","eg",
                             "fr","gb","gr","hk","hu",
                             "id","ie","il","in","it",
                             "jp","kr","lt","lv","ma",
                             "mx","my","ng","nl","no",
                             "nz","ph","pl","pt","ro",
                             "rs","ru","sa","se","sg",
                             "si","sk","th","tr","tw",
                             "ua","us"]
       
        
        for contry in country_codesUser {
            if(codC != contry){
                endpointSport =  "https://newsapi.org/v2/top-headlines?country=\(codC)&category=\(cateU)&apiKey=\(key)"
                
                
                
                
            }
            contCountry+=1
        }
        
       
     
        
        
        
        
        
        return  endpointSport
   }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articlesN.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "mycellNat", for: indexPath)
        
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "mycellNat")
        }
        let objecto = articlesN[indexPath.row]
        
        let title:String = objecto["title"] as! String
        let imageNC: String = objecto["urlToImage"] as! String
        let imageUrl: URL = URL(string: imageNC)!
        let image = try! UIImage(withContentsOfUrl: imageUrl)
        let targetSizee = CGSize(width: 80, height: 100)
        let scaledImage = image!.scalePreservingAspectRatio(
            targetSize: targetSizee
        )
        
  
     
     
        cell.textLabel?.text =  title 
        cell.imageView!.image = scaledImage
      
      
        
        return cell
    }
    
    
    
    
    
    
    
    

        // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let enpointS =  cateSport(categoryS:"Sport")
         let enpointB =  cateSport(categoryS:"Bussiness")
        if segue.identifier == "goToNBussines"{
            //esto quiero que me castes como resultados view controller
            let natBussinessVista=segue.destination as! BussinesViewController
            natBussinessVista.endpNB = enpointS
          
        
        }
        if segue.identifier == "goToNationalSports"{
            let natSportVista = segue.destination as! SportViewController
            natSportVista.endpNS = enpointB
            
            
        }
    }
 

}
