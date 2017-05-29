//
//  ViewController.swift
//  Login  Adivinhe o Numero
//
//  Created by Cristiano Diniz Pinto on 28/05/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var value: UITextField!
    @IBOutlet weak var contador: UILabel!
    @IBOutlet weak var btnAdivinhar: UIButton!
    
    
    var numero:Int!
    var tentativas:Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        iniciarJogo();
        
        // Do any additional setup after loading the view, typically from a nib.

            
            // The next line is the crucial part
            // The action is where Swift 3 varies from previous versions
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap(gesture:)))
            self.view.addGestureRecognizer(tapGesture)
    }
        
    func tap(gesture: UITapGestureRecognizer) {
        value.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func adivinhar(_ sender: Any) {
        
        if value.text! != ""{
            
            if numero! == Int(value.text!) {
                
                img.image = UIImage(named: "smiling")
                
            }else if numero! > Int(value.text!)! {
                
                img.image = UIImage(named: "is-greater-than")
                
            }else if numero! < Int(value.text!)! {
                
                img.image = UIImage(named: "is-less-than")
                
            }
            
            tentativas = tentativas - 1
            contador.text = "Você tem "+tentativas.description+" tentativas"
            
            
            if tentativas == 0 {
                btnAdivinhar.isEnabled = false;
                img.image = UIImage(named: "sad")
            }

            
        }
        value.text = ""
        value.resignFirstResponder()
        
    }
    
    @IBAction func novoJogo(_ sender: Any) {
        iniciarJogo()
    }
    
    func iniciarJogo(){
        numero = Int(arc4random_uniform(100))
        tentativas = 10
        btnAdivinhar.isEnabled = true;
        contador.text = "Você tem "+tentativas.description+" tentativas"
        img.image = nil
    }
    
    

}

