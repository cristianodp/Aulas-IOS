//
//  ItemController.swift
//  ListaItens
//
//  Created by Cristiano Diniz Pinto on 01/06/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ItemController {
    
    
    static func getLista(callback:@escaping ([Item]?,Error?)->Void){
        
        Alamofire.request("http://glasslu.com.br/ws/item-buscar.php").responseJSON(completionHandler: { (responseData) in
            
            if let obj = responseData.result.value{
                print(obj)
                
                let json = JSON(obj)
                
                let arrayJson = json.arrayValue
            
                var itens = [Item]()
                
                arrayJson.forEach({ (itemJson) in
                    
                    itens.append(Item.init(data: itemJson))
                    
                })
                
                
                callback(itens,nil)
                
                
            }
            
        })
        
    }
    
   /* static func getList(callback:@escaping ([Cidade]?,Error?) -> Void)
    {
        let reachability = Reachability()!
        if reachability.isReachable == false {
            
            callback(nil,exceptionErros.notConnected)
            return
        }
        let urlString = AppServices.BUSCA_CIDADES_WS + estId.description
        
        Alamofire.request(urlString).responseJSON(completionHandler: { (responseData) in
            
            if let object = responseData.result.value{
                let json = JSON(object)
                print(json)
                if retornoValido(json) {
                    if let cidades = self.getDataFormResponse(reponseJson: json){
                        callback(cidades,nil)
                    }else{
                        callback(nil,exceptionErros.NoDataFound)
                    }
                }else{
                    callback(nil,exceptionErros.erroRetornoWebService("Erro de comunicação com webservice"))
                    
                }
                
            }else{
                callback(nil,responseData.result.error)
            }
        })
    }*/

    
}
