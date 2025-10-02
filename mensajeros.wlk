import vehiculos.*
import destinosYPaquetes.*
object roberto{
    var vehiculo = bici
     var destino = puenteBrooklyn
    
    method destino(unDestino){
        destino = unDestino
    }
    method cambiarVehiculo(cambiarVehiculo){
        vehiculo = cambiarVehiculo
    }
    method peso(){
        return 90 + vehiculo.peso()
    }
    method tieneCubiertasNuevas(){
        return true
    }
    method puedeLlamar(){
        return false
    }


}


object chuckNorris{
    var peso = 80
    method peso(){
        return peso
    }
    method peso(nuevoPeso){
        peso = nuevoPeso
    }
    method puedeLlamar(){
       return true
    }
     method puedeIrA(unDestino){
        if(self.puedeLlamar() && self.peso() >= 1000 ){ self.puedeIrA(unDestino)}
    }
}

object neo{
    method peso(){return null}

    method puedeLlamar(){
      return self.tieneCredito()
      }
     method tieneCredito(){
        return true
    }
    method puedeIrA(unDestino){
        if(self.puedeLlamar() && self.peso() >= 1000 ){ self.puedeIrA(unDestino)}
    }
}