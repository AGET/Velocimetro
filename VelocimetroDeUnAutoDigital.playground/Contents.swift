//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    var x = Velocidades.Apagado
    init(){
            velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad () -> ( actual : Int , velocidadEnCadena : String) {
        var valor : Int = 0
        var texto : String = ""
        if velocidad.rawValue == 0 {
            texto = String(velocidad)
            valor = velocidad.rawValue
            velocidad = Velocidades.VelocidadBaja
        }else if velocidad.rawValue > 0 && velocidad.rawValue < 50{
            texto = String(velocidad)
            valor = velocidad.rawValue
            velocidad = Velocidades.VelocidadMedia
        }else if velocidad.rawValue > 20 && velocidad.rawValue < 120 {
            texto = String(velocidad)
            valor = velocidad.rawValue
            velocidad = Velocidades.VelocidadAlta
        }else if velocidad.rawValue > 50 {
            texto = String(velocidad)
            valor = velocidad.rawValue
            velocidad = Velocidades.VelocidadMedia
        }
        return (valor,texto)
    }
}
var auto = Auto()
for i in 0 ..< 20 {
    print("Iteracion \(i+1) : \(auto.cambioDeVelocidad())")
}