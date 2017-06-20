//
//  ViewController.swift
//  salvandoData
//
//  Created by Cristiano Diniz Pinto on 06/06/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let file = "file.txt"
        
        let text = "some text"
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            
            let path = dir.appendingPathComponent(file)
            
            //writing
            do {
                try text.write(to: path, atomically: false, encoding: String.Encoding.utf8)
            }
            catch {/* error handling here */}
            
            //reading
            do {
                let readFile = try String(contentsOf: path, encoding: String.Encoding.utf8)
                print(readFile)
            }
            catch {/* error handling here */}
            
            
        }
        
        
       

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

