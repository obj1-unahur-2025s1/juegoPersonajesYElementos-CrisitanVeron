object floki {
    const arma= ballesta
    method tipo() = "guerrero" 
    method arma() =arma 
    method encontrar(elemento) {
      
    }
}
object luisa {
  
}

object mario {
    method encontrar(elemento) {
      
    }
}

object ballesta {
  var estaCargada=true

  var cant_flechas= 10
  method cant_flechas() = cant_flechas 
  
  method estaCargada() = cant_flechas >0
  method Usar() {
    cant_flechas= cant_flechas -1 
  }

  method name() =4
}
    
object jabalina {
  var estaCargada=true
  method estaCargada() = estaCargada

  method Usar() {
    estaCargada=false
  }
  method name() =30 
}

object castillo {
    var nivelDefensa = 150
    method altura() = 20 
    method nivelDefensa() = nivelDefensa

    method recibirAtaque(potencia) {
      nivelDefensa= nivelDefensa-potencia
    } 
}

object aurora {
  method altura() = 1
  var estaViva= true
  method estaViva() = estaViva  

  method recibirAtaque(potencia) {
    estaViva= potencia <10
} 
}

object tipa {
  var altura = 8
  method altura_act() =altura 
  method recibirAtaque(potencia) {
    
  }
}

