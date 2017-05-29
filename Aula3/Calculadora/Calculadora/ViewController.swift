//
//  ViewController.swift
//  Calculadora
//
//  Created by Cristiano Diniz Pinto on 28/05/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var operador = ""
    var numero = "0.00"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClick(_ sender: UIButton) {
        
        let value = sender.titleLabel!.text!
        
        
        if value.isOperator(){
            
            if value == "=" {
                
                calcular()
                
            }else{
                
                numero = displayLabel.text!
                operador = value
                displayLabel.text = "0.00"
                
                
            }
            
            
            
        }else{
            
            if Float(displayLabel.text!)! == 0.0 {
                displayLabel.text = value

            }else{
                displayLabel.text = displayLabel.text! + value
            }
            
        }
        
        
        
    }
    
    
    func calcular(){
        var calc:Float = 0.0
        
        if operador == "+"{
          calc = Float(numero)! + Float(displayLabel.text!)!
        }
        
        if operador == "-"{
            calc = Float(numero)! - Float(displayLabel.text!)!
        }

        if operador == "/"{
            calc = Float(numero)! / Float(displayLabel.text!)!
        }

        if operador == "X"{
            calc = Float(numero)! * Float(displayLabel.text!)!
        }

        numero = calc.description
        
        displayLabel.text = calc.description
        
        
        
        
    
    }
    
    
    @IBAction func limpar(_ sender: Any) {
        
        operador = ""
        numero = "0.00"
        
        displayLabel.text = "0.00"
        
        
        

        
    }
    
    


}

