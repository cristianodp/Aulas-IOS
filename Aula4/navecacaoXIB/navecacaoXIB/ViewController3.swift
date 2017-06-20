//
//  ViewController3.swift
//  navecacaoXIB
//
//  Created by Cristiano Diniz Pinto on 01/06/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit

protocol ParametrosDelegate {
    func retornoPage2(text:String)
}



class ViewController3: UIViewController {

    
    var delegateRetorno:ParametrosDelegate!
    
    var textoRecebido:String!
    
    
    @IBOutlet weak var value2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        value2.text = textoRecebido //?? "nada foi enviado"

        // Do any additional setup after loading the view.
    }

  
    @IBAction func retornar(_ sender: Any) {
        
        delegateRetorno.retornoPage2(text: value2.text!)
        dismiss(animated: true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
