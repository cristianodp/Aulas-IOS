//
//  ViewController.swift
//  ParametrosEntreTelas
//
//  Created by Cristiano Diniz Pinto on 01/06/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ParametroDelegate {

    @IBOutlet weak var textEdit: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func retornoPage2(text: String) {
        textEdit.text = text
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segue1" {
            
            let vc = segue.destination as? ViewController2
            vc?.textoRecebido = textEdit.text!
            vc?.delegateRetorno = self
          
        }
        
        
    }
}

