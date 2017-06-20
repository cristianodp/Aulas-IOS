//
//  DBUtils.swift
//  ListaItens
//
//  Created by Cristiano Diniz Pinto on 07/06/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import Foundation
import SQLite

class DBUtils {
    
    static var shareInstance = DBUtils()
    
    var db: Connection?
    
    let TItens = Table("titens")
    let id = Expression<Int>("id")
    let descricao = Expression<String>("descricao")
    let preco = Expression<Double>("preco")
    let urlIcon = Expression<String>("url_icon")
    let ativo = Expression<Int>("ativo")
    let formulaCalculo = Expression<String>("formula_calculo")
    
    
    init() {
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        print(path)
        
        do{
            db = try Connection("\(path)/listaItens2.sqlite3")
            
            try db!.run(TItens.create(block:{
                t in
                t.column(id)
                t.column(descricao)
                t.column(preco)
              //  t.column(urlIcon)
                t.column(ativo)
                t.column(formulaCalculo)
            }))
        }catch{
            print("Erro ao conectar sqlite")
        }
    }
    
    func insert(data:Item) -> Int64{
        do{
            let insert = TItens.insert(id <- data.id!
                ,descricao <- data.descricao!
                ,preco <- data.preco!
               // ,urlIcon <- data.urlIcon!
                ,ativo <- data.ativo!
                ,formulaCalculo <- data.formulaCalculo!
                                       )
            let rowid = try db?.run(insert)
            return rowid!
        }catch{
            print("Erro ao inserir sqlite")
        }
        return 0
    }
    
    func delete(idItem:Int){
        do{
            let records = TItens.filter(id == idItem)
            try db?.run(records.delete())
            
        }catch{
            print("Erro ao delete sqlite")
        }
    }
    
    func update(data:Item)-> Int64{
        do{
            let up = TItens.update( id <- data.id!
                ,descricao <- data.descricao!
                ,preco <- data.preco!
               // ,urlIcon <- data.urlIcon!
                ,ativo <- data.ativo!
                ,formulaCalculo <- data.formulaCalculo!)
            
            let rowid = try db?.run(up)
            return Int64(rowid!)
        }catch{
            print("Erro ao update sqlite")
        }
        return 0
    }
    
    
    
   
    func getItens() -> [Item]?{
        var itens = [Item]()
       
        do{
            if let db = db{
                
                for row in try db.prepare(TItens){
                  
                    print(row[id])
                    
                    
                }
            }
        }catch{
            print("Erro ao getLast sqlite")
        }
        
        return nil
    }


    
    
}
