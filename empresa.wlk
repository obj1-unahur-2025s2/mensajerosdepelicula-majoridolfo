object empresa{
 var empleados = #{}

 method empleados(conjuntoEmpleado){
  empleados = conjuntoEmpleado
 }
  method contratar(unMensajero){
   empleados.add(unMensajero)
  }
  method despedir(unMensajero){
 empleados.remove(unMensajero)
  }
 method despedirATodos(){
   empleados.clear()
 }
method esGrande(){
  empleados.size()
}
method puedeSerEntregado(unMensajero){
  empleados.first({unMensajero.puedeSerEntregado()})
}

method pesoDeUnEmpleado(unMensajero){
  empleados.last({unMensajero.peso()})
}
 
}