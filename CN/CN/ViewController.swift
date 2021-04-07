//
//  ViewController.swift
//  CN
//
//  Created by Lia Díaz on 4/4/21.
//  Copyright © 2021 Lia Díaz. All rights reserved.
//

import UIKit

extension UIImage {
    convenience init?(withContentsOfUrl url: URL) throws {
        let imageData = try Data(contentsOf: url)
        self.init(data: imageData)
    }
    
    func scalePreservingAspectRatio(targetSize: CGSize) -> UIImage {
        // Determine the scale factor that preserves aspect ratio
        let widthRatio = targetSize.width / size.width
        let heightRatio = targetSize.height / size.height
        
        let scaleFactor = min(widthRatio, heightRatio)
        
        // Compute the new image size that preserves aspect ratio
        let scaledImageSize = CGSize(
            width: size.width * scaleFactor,
            height: size.height * scaleFactor
        )
        
        // Draw and return the resized UIImage
        let renderer = UIGraphicsImageRenderer(
            size: scaledImageSize
        )
        
        let scaledImage = renderer.image { _ in
            self.draw(in: CGRect(
                origin: .zero,
                size: scaledImageSize
            ))
        }
        
        return scaledImage
    }
}

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate,UISearchResultsUpdating{
   
    
    
    @IBOutlet weak var tableView: UITableView!
    

    
    var key = "bd9c7887770b43ac9bbdabc3055993a7"
    var otraa = "https://newsapi.org/v2/everything?q=bitcoin&apiKey=af1db075adac47f3aa8e05c711a1b749"
    var titulos = ["Vamos a salir","Come papas","Traiga todo","Se valiente","Ok ya acabe"]
    var articles: [[String: Any]] = []
    
    var dataFilters: [[String:Any]] = []
    
    let searchController =  UISearchController(searchResultsController: nil)
    
    func updateSearchResults(for searchController: UISearchController) {
        if searchController.searchBar.text! == ""{
            dataFilters = articles
        }else{
            dataFilters = articles.filter{
                let objecto = $0
                let titleF:String = objecto["publishedAt"] as! String
                
                return (titleF.lowercased().contains(searchController.searchBar.text!.lowercased()))
            }
        }
        self.tableView.reloadData()
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         title = "My feed news"
        
    
        
       
     
        
        if let url = URL(string: otraa){
            do{
                let news = try? Data(contentsOf: url)
                if let json = try JSONSerialization.jsonObject(with: news!, options: []) as? [String: Any] {
                    articles = json["articles"] as! [[String: Any]]
                    dataFilters = articles
                    searchController.searchResultsUpdater = self
                    searchController.dimsBackgroundDuringPresentation = false
                    searchController.hidesNavigationBarDuringPresentation = false
                    
                    self.tableView.tableHeaderView = searchController.searchBar
                    
                    searchController.obscuresBackgroundDuringPresentation = false
                    // 3
                    searchController.searchBar.placeholder = "Eg. 2001-03-31"
                   
                  
                    
                }
            }catch{
                print("conents could not be loaded")
            }
        }else{
            print("the url was bad!")
        }
    }
    
    
    @IBAction func nation(_ sender: Any) {
        nat()
        locatetionCode()
    }
    
    func locatetionCode()->String{
        let locale = Locale.current
        print(locale)
        var codeL = locale.regionCode!
        var codeLl = codeL.lowercased()
        return codeLl
    }
    
     func nat()-> String{
        let locale = locatetionCode()
        
  
   
        let endp = "https://newsapi.org/v2/top-headlines?country=\(locale)&apiKey=\(key)"
        
        print("urlend: " + endp)
      
        return endp
    }
    
    
    func inter()-> [String]{
        let codeUser = locatetionCode()
        let country_codes = ["ae","ar","at","au","be",
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
        var apisI:[String] = []
        var contCountry: Int = 0
       
        for contry in country_codes{
            if(codeUser != contry ){
                let codeP = contry
                apisI.insert("https://newsapi.org/v2/top-headlines?country=\(codeP)&apiKey=\(key)", at: contCountry)
                
              
            
            }
          contCountry+=1
        }
      
        return apisI
    }
 
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataFilters.count
    }
    
    
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! AllTableViewCell
        
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "mycell") as! AllTableViewCell
        }
        let object = dataFilters[indexPath.row]
        
        let imageNC: String = object["urlToImage"] as! String
        let imageUrl: URL = URL(string: imageNC)!
        let image = try! UIImage(withContentsOfUrl: imageUrl)
        let targetSizee = CGSize(width:190, height: 410)
        let scaledImage = image!.scalePreservingAspectRatio(
            targetSize: targetSizee
        )
        let title:String = object["title"] as! String
        let date:String = object["publishedAt"] as! String
        
         cell.imageNA.image = scaledImage
        cell.titlrNA.text  = title
         cell.DateA.text  = date
       
        
        return cell
    }
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let enpoint = nat()
        let interenpoints = inter()
        
        
       
        // para más tranciciones
        if segue.identifier == "goNewsNat"{
            //esto quiero que me castes como resultados view controller
            let natVista=segue.destination as! NatViewController
            natVista.endp = enpoint
            print( natVista.endp)
            
        }
        if segue.identifier == "goToInternational"{
            let interVista = segue.destination as! InternationalViewController
            interVista.arrayApis = interenpoints
            
        }
     }
 


}

