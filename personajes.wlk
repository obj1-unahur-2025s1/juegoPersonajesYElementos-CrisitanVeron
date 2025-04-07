object floki {
    const arma= ballesta
    method tipo() = "guerrero" 
    method arma() =arma 
    method encontrar(elemento) {
      if(arma.estaCargada()){
        arma.Usar()
        elemento.recibirAtaque(self.arma().potencia())
      }
    }
}
object luisa {
  var personajeActivo=null
  method personajeActivo() = personajeActivo
  method asignarPersonaje(elemento) {
    personajeActivo= elemento
  }

  method aparece(elemento) {
    self.personajeActivo().encontrar(elemento)
  }
}

object mario { 
    var valorRecolectado=0
    var esFeliz= false
    method esFeliz() = esFeliz 
    method valorRecolectado() = valorRecolectado 
    method encontrar(elemento) {
      elemento.trabajoRecibido()
      valorRecolectado= valorRecolectado +elemento.darValor()
      esFeliz=valorRecolectado>=50
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

  method potencia() =4
}
    
object jabalina {
  var estaCargada=true
  method estaCargada() = estaCargada

  method Usar() {
    estaCargada=false
  }
  method potencia() =30 
}

object castillo {
    var nivelDefensa = 150
    method altura() = 20 
    method nivelDefensa() = nivelDefensa

    method recibirAtaque(potencia) {
      nivelDefensa= nivelDefensa-potencia
    }
    method trabajoRecibido() {
      nivelDefensa= 200.min(nivelDefensa+20)
    }
    method darValor() {
      return nivelDefensa/5
    }
}

object aurora {
  method altura() = 1
  var estaViva= true
  method estaViva() = estaViva  

  method recibirAtaque(potencia) {
    estaViva= potencia <10
  }
  method trabajoRecibido() {
    
  }
  method darValor() =15 
}

object tipa {
  var altura = 8
  method altura_act() =altura 
  method recibirAtaque(potencia) {
    
  }
  method trabajoRecibido() {
    altura=altura+1
  }
  method darValor() = altura*2 
}

