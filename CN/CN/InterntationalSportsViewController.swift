//
//  InterntationalSportsViewController.swift
//  CN
//
//  Created by Lia Díaz on 4/6/21.
//  Copyright © 2021 Lia Díaz. All rights reserved.
//

import UIKit

class InterntationalSportsViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    var en = "https://newsapi.org/v2/everythicateSport(categoryS: catB)ng?q=bitcoin&apiKey=061e21cbea8c42d6a846fb82598bbf18"
    var arrayApis: [String] = []
    var apiS:String = ""
    
    var articlesNB: [[String: Any]] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articlesNB.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "myCellIntenationalSport", for: indexPath)
        
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "myCellIntenationalSport")
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
        
        
        
        
        
        cell.textLabel?.text =  titleB
        cell.imageView!.image = scaledImage
      
        
        
        
        return cell
    }
    
    
    
    
    
    
    
    
    

}
