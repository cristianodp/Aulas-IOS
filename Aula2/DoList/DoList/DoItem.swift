//
//  DoItem.swift
//  DoList
//
//  Created by Cristiano Diniz Pinto on 30/05/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import Foundation

class DoItem: NSObject {
    
    private var descricao:String
    private var data:Date
    
    init(desc:String,data:Date) {
        
        self.descricao = desc
        self.data = data
    }
    
    
    init(dataDic:[String:Any]) {
    
        
        if let desc = dataDic["descricao"] as? String{
            self.descricao = desc
        }else{
            self.descricao = ""
            
        }
        
        if let data = dataDic["data"] as? Date{
            self.data = data
        }else{
            self.data = Date()
            
        }
      
    }
    
    func getData()->Date{
        return data
    }
    
    func getDescricao()->String{
        return descricao
    }
    
    
    func set(data:Date){
        self.data = data
    }
    
    func set(descricao:String){
        self.descricao = descricao
    }
    
    
    func getDataFormat()->String{
    
        
       let date:Date = data
       let formatter = DateFormatter()
       formatter.timeZone = NSTimeZone(abbreviation: "BRT") as TimeZone!
       // formatter.timeZone = TimeZone.current
       formatter.dateFormat = "dd/mm/yyyy HH24:mi"
       return formatter.string(from: date)
      
        
    }
    
    
    func toDicionary()->[String:Any]{
        
        var item = [String:Any]()
        item["descricao"] = self.descricao
        item["data"] = self.data
        
        return item
        
    
    }
    
}
