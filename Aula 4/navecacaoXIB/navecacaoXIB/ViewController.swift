//
//  ViewController.swift
//  navecacaoXIB
//
//  Created by Cristiano Diniz Pinto on 01/06/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ParametrosDelegate {

    @IBOutlet weak var valeu1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as? ViewController3
        vc?.delegateRetorno = self
        vc?.textoRecebido = valeu1.text!
        
    }
    
    func retornoPage2(text: String) {
        valeu1.text = text

    }
    
    
}

