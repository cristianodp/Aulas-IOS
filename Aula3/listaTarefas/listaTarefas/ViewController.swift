//
//  ViewController.swift
//  listaTarefas
//
//  Created by Cristiano Diniz Pinto on 31/05/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource  {

    @IBOutlet weak var descricaoLabel: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var lista = [(Desc:String,Data:Date)]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func addTarefa(_ sender: Any) {
        
        
        //var item = (Desc:String,Data:Date).self
        
        let  item = (descricaoLabel.text! ,Date())
        
        
        lista.append( item)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    
    tableVi
    
    
}

