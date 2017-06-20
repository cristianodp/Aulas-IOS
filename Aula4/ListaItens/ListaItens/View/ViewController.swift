//
//  ViewController.swift
//  ListaItens
//
//  Created by Cristiano Diniz Pinto on 01/06/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchControler: UISearchBar!
    
    var lista:[Item]!
    var listaFilter:[Item]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nvar
        
        ItemController.getLista { (itens, error) in
            
            if error == nil{
             
                if let itens = itens{
                    self.lista = itens
                    self.filtar(term: nil)
                }
                
                
                
                
            }else{
                print(error.debugDescription)
            }
            
        }
        
    }

    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if let lista = self.listaFilter{
            return lista.count
        }else{
            return 0
        }
    }
    

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
       
        var identifier = "row"
        
        if indexPath.row % 2 == 0{
            
            identifier = "row2"
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! rowTableViewCell
        
        cell.load(data: listaFilter[indexPath.row])
        
        return cell
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? TableViewController
        
        let indexPath = self.tableView.indexPathForSelectedRow
        vc?.item = listaFilter[(indexPath?.row)!]
        
        
    }
    
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        self.searchControler.showsCancelButton = true
        
    }
    
    
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
    
        self.searchControler.showsCancelButton = false
        
    }
    
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.searchControler.endEditing(true)
        //self.searchControler.showsCancelButton = false
        filtar(term: nil)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let value = self.searchControler.text{
            filtar(term:value)
        }else{
            filtar(term: nil)
        }
        
        self.searchControler.endEditing(true)
        //self.searchControler.showsCancelButton = false
    }
    
    
    func filtar(term:String?){
        if let term = term{
        
        listaFilter = lista.filter({ (obj) -> Bool in
            if (obj.descricao?.contains(term))!{
                return true
            }
            return false
        })}else{
            listaFilter = lista
        }
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
            
        }
        

        
        
        
    }


}

