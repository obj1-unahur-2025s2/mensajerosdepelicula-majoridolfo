import mensajeros.*
import vehiculos.*

object puenteBrooklyn{
   method puedePasar(unMensajero){
        (unMensajero.peso()) <= 1000
    }
}

object laMatrix{
    method puedePasar(unMensajero){
        (unMensajero.puedeLlamar())
    }
}

object paquete{
    var mensajero = roberto
    var destino = puenteBrooklyn
    var estaPago = true
    method destino(nuevoDestino){
        destino = nuevoDestino
    }
    method mensajero(unMensajero){
        mensajero = unMensajero
    }
    method puedeSerEntregado(unMensajero){
        return (destino.puedePasar(unMensajero)) && self.estaPago()
    }
    method estaPago(){
        return true
    }
    
    method valorEnvio(){
        return 50
    }

}
object paquetito{
    var mensajero = []
    var destino = puenteBrooklyn
    method destino(nuevoDestino){
        destino = nuevoDestino
    }
    method mensajero(unMensajero){
        mensajero = unMensajero
    }
    method estaPago(){
        return true
    }
    method puedeSerEntregado(){
        return (mensajero.puedeIrA(destino)) && self.estaPago()
    }
    method valorEnvio(){
       return self.estaPago()
   }
}

object paquetonViajero{
var destino = []
var mensajero = []
    method destino(nuevoDestino){
        destino = nuevoDestino
    }
    method mensajero(unMensajero){
        mensajero = unMensajero
    }
    method valorEnvio(){
        return 100
    }
    method estaPago(){
        return true
    }
     method puedeSerEntregado(){
        return (mensajero.puedeIrA(destino)) && self.estaPago()
    }
    method puedeSerEnviado(){
        return ({destino => destino.valorEnvio() == self.estaPago()})
        ( self.puedeSerEntregado())
    }
}