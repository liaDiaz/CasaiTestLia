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
         cateSport()
        
        
    }
    @IBAction func bussiness(_ sender: Any) {
        caterBussines()
    }
    
    func cateSport()-> String{
        let endB = self.end.text!
        var endpointSport:String = ""
        
        if (endB == "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(key)" ){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ae&apiKey=\(key)" ){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=ae&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=at&apiKey=\(key)" ){
           endpointSport = "https://newsapi.org/v2/top-headlines?country=at&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ar&apiKey=\(key)" ){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=ar&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=au&apiKey=\(key)" ){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=au&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=be&apiKey=\(key)" ){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=be&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=bg&apiKey=\(key)" ){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=bg&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=br&apiKey=\(key)" ){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=br&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ca&apiKey=\(key)" ){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=ca&category=sports&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ch&apiKey=\(key)" ){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=ch&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=cn&apiKey=\(key)" ){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=cn&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=co&apiKey=\(key)" ){
           endpointSport = "https://newsapi.org/v2/top-headlines?country=co&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=cu&apiKey=\(key)" ){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=cu&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=cz&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=cz&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=de&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=de&category=sports&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=eg&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=eg&category=sports&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=fr&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=fr&category=sports&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=gb&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=gb&category=sports&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=gr&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=gr&category=sports&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=hk&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=hk&category=sports&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=hu&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=hu&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=hu&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=hu&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=id&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=id&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ie&apiKey=\(key)"){
           endpointSport = "https://newsapi.org/v2/top-headlines?country=ie&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=il&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=il&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=in&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=in&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=it&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=it&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=jp&apiKey=\(key)"){
           endpointSport = "https://newsapi.org/v2/top-headlines?country=jp&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=kr&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=kr&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=lt&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=lt&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=lv&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=lv&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ma&apiKey=\(key)"){
           endpointSport = "https://newsapi.org/v2/top-headlines?country=ma&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=mx&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=mx&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=my&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=my&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ng&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=ng&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=nl&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=nl&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=no&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=no&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=nz&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=nz&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ph&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=ph&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=pl&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=pl&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=pt&apiKey=\(key)"){
           endpointSport = "https://newsapi.org/v2/top-headlines?country=pt&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ro&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=ro&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=rs&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=rs&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ru&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=ru&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=sa&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=sa&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=se&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=se&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=sg&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=sg&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=si&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=si&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=sk&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=sk&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=th&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=th&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=tr&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=tr&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=tw&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=tw&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ua&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=ua&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ve&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=ve&category=sports&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=za&apiKey=\(key)"){
            endpointSport = "https://newsapi.org/v2/top-headlines?country=za&category=sports&apiKey=\(key)"
        }
        
        print( "url sport" + endpointSport)
        
        return  endpointSport
    }
    func caterBussines()->String{
        let endB = self.end.text!
        var endpointBussiness:String = ""
        
        if (endB == "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(key)" ){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ae&apiKey=\(key)" ){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=ae&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=at&apiKey=\(key)" ){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=at&category=business&apiKey=\(key)"
             }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ar&apiKey=\(key)" ){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=ar&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=au&apiKey=\(key)" ){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=au&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=be&apiKey=\(key)" ){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=be&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=bg&apiKey=\(key)" ){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=bg&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=br&apiKey=\(key)" ){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=br&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ca&apiKey=\(key)" ){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=ca&category=business&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ch&apiKey=\(key)" ){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=ch&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=cn&apiKey=\(key)" ){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=cn&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=co&apiKey=\(key)" ){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=co&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=cu&apiKey=\(key)" ){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=cu&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=cz&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=cz&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=de&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=de&category=business&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=eg&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=fr&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=fr&category=business&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=gb&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=gb&category=business&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=gr&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=gr&category=business&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=hk&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=hk&category=business&apiKey=\(key)"
            
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=hu&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=hu&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=hu&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=hu&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=id&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=id&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ie&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=ie&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=il&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=il&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=in&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=it&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=it&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=jp&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=jp&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=kr&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=kr&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=lt&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=lt&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=lv&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=lv&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ma&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=ma&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=mx&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=mx&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=my&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=my&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ng&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=ng&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=nl&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=nl&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=no&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=no&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=nz&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=nz&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ph&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=ph&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=pl&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=pl&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=pt&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=pt&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ro&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=ro&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=rs&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=rs&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ru&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=ru&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=sa&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=sa&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=se&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=se&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=sg&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=sg&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=si&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=si&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=sk&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=sk&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=th&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=th&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=tr&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=tr&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=tw&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=tw&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ua&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=ua&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=ve&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=ve&category=business&apiKey=\(key)"
        }
        if (endB == "https://newsapi.org/v2/top-headlines?country=za&apiKey=\(key)"){
            endpointBussiness = "https://newsapi.org/v2/top-headlines?country=za&category=business&apiKey=\(key)"
        }
        
        
        
        return  endpointBussiness
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
           let enpointB = caterBussines()
        let enpointS =  cateSport()
        if segue.identifier == "goToNBussines"{
            //esto quiero que me castes como resultados view controller
            let natBussinessVista=segue.destination as! BussinesViewController
            natBussinessVista.endpNB = enpointB
          
        
        }
        if segue.identifier == "goToNationalSports"{
            let natSportVista = segue.destination as! SportViewController
            natSportVista.endpNS = enpointS
            
            
        }
    }
 

}
