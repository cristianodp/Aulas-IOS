//
//  ViewController2.swift
//  Aula 2
//
//  Created by Cristiano Diniz Pinto on 30/05/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func voltaAction(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }

    @IBAction func voltarAction2(_ sender: Any) {
        
       _ = navigationController?.popToRootViewController(animated: true)
        
        
    }
}
