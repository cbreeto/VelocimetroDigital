// Autor Carlos Brito Abundis

import UIKit

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
    
    
}

class Auto {
    var velocidad : Velocidades
    
    init(velocidad : Velocidades) {
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        var velo = ""
        switch self.velocidad.rawValue {
        case Velocidades.Apagado.rawValue :
            self.velocidad = .VelocidadBaja
            velo = "Velocidad Baja"
            
        case Velocidades.VelocidadBaja.rawValue :
            self.velocidad = .VelocidadMedia
            velo = "Velocidad Media"
            
        case Velocidades.VelocidadMedia.rawValue :
            self.velocidad = .VelocidadAlta
            velo = "Velocidad Alta"
            
        case Velocidades.VelocidadAlta.rawValue :
            self.velocidad = .VelocidadMedia
            velo = "Velocidad Media"
            
        default:
                print("Not a valid value")
        }
        
        return (self.velocidad.rawValue, "\(velo)")
        
       
        
    }
}

    var car = Auto(velocidad: .Apagado)
    print("\(car.velocidad.rawValue) \t\(car.velocidad)")


    for var i = 0 ; i < 20 ; i++ {
        let carro = car.cambioDeVelocidad()
        print("\(carro.actual),\t\(carro.velocidadEnCadena)")
    }


