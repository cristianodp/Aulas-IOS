//
//  ExtensionFile.swift
//  Calculadora
//
//  Created by Cristiano Diniz Pinto on 28/05/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import Foundation


public extension String {
    
    func isNumber() -> Bool {
        let numberCharacters = CharacterSet.decimalDigits.inverted
        return !self.isEmpty && self.rangeOfCharacter(from:numberCharacters) == nil
    }
    
    func isOperator()->Bool{
        let value:String = self
        
        if value == "/" {
            return true
        }
    
        if value == "X" {
            return true
        }
    
        if value == "-" {
            return true
        }
    
        if value == "+" {
            return true
        }
    
        if value == "=" {
            return true
        }
        
        
    
        return false
    
    
    }
}
