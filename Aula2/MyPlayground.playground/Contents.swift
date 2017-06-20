//: Playground - noun: a place where people can play

import UIKit


enum Simbolo:Int {
    
    case As = 1, dois, tres
    
    func valor() -> String {
        
        switch self {
        case .As:
            return "As"
        case .dois:
            return "dois"
        case .tres:
            return "tres"
        default:
            return "teste"
        
        }
        
    }
}


enum CompassPoint {
    case north
    case south
    case east
    case west
}



CompassPoint.north


protocol Personagem{
    var nome :String {get set}
    var pontosDeVida : Int { get}
    
    func atacar()
    func defender()
    func correr()
    
}






class Heroi: Personagem{
    var nome: String = ""
    
    var pontosDeVida: Int = 9
    
    func atacar() {
        print("atacar")
    }
    
    func defender() {
        print("defender")
    }
    
    func correr() {
        print("correr")
    }
    
}


let cassador = Heroi()












