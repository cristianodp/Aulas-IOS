//: Playground - noun: a place where people can play

import UIKit

let dia = 29


var str = "Hoje é dia \(dia - 10 ) "



var luas = [1,2,3,4,5,6,7,8,9]



let tes = luas.filter { (item) -> Bool in
    
    if item > 5 {
        return true
    }
    
    return false
    
}

//tes.append(80)

let ordenado = tes.sorted { (item1, item2) -> Bool in
    
    print("\(item1 ) - \( item2)")
    if item1 > item2{
        return true
    }
    
    return false
    
}




if 1 == 1 {
  let b = 2
}






