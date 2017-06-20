//
//  Item.swift
//  ListaItens
//
//  Created by Cristiano Diniz Pinto on 01/06/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import Foundation
import SwiftyJSON

class Item: NSObject {
  
    var id:Int?
    var descricao:String?
    var preco:Double?
    var urlIcon:String?
    var ativo:Int?
    var formulaCalculo:String?
    
    init(data:[String:Any]) {
        
        if let value = data["id"] as? Int{
            self.id = value
        }
        
        if let value = data["descricao"] as? String{
            self.descricao = value
        }
        
        if let value = data["preco"] as? Double{
            self.preco = value
        }
        
        
        if let value = data["urlIcon"] as? String{
            self.urlIcon = value
        }
        
        
        if let value = data["ativo"] as? Int{
            self.ativo = value
        }
        
        
        if let value = data["formula_calculo"] as? String{
            self.formulaCalculo = value
        }
        
        
        
    }
    
    init(data:JSON) {
        
        if let value = Int(data["id"].string!) {
            self.id = value
        }
        
        if let value = data["descricao"].string {
            self.descricao = value
        }
        
        if let value = Double(data["preco"].string!) {
            self.preco = value
        }
        
        
        if let value = data["urlIcon"].string{
            self.urlIcon = value
        }
        
        
        if let value = Int(data["ativo"].string!){
            self.ativo = value
        }
        
        
        if let value = data["formula_calculo"].string{
            self.formulaCalculo = value
        }
        
        
        
    }
    
    
    func getPrecoFormated()->String{
        if let preco = preco{
            return  String(format: "%.2f", preco)
        }else{
            return "0.00"
        }
    }
    
}
