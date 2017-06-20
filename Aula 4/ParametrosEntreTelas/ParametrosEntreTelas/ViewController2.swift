//
//  ViewController2.swift
//  ParametrosEntreTelas
//
//  Created by Cristiano Diniz Pinto on 01/06/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit

protocol ParametroDelegate  {
    func retornoPage2(text:String)
}

class ViewController2: UIViewController {
    
    var textoRecebido:String!
    var delegateRetorno:ParametroDelegate!
    @IBOutlet weak var textEdit: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let textoRecebido = textoRecebido{
            textEdit.text = textoRecebido
        }
    }

    @IBAction func retornarParametro(_ sender: Any) {
        
        delegateRetorno.retornoPage2(text: textEdit.text!)
        
        dismiss(animated: true, completion: nil)
        
    }

  
}
