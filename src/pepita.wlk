object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return energia.between(500, 1000)
	}
	
	method cuantoQuiereVolar() {
		
		var kilometros = energia/5
		
		if(energia.between(300, 400))
			kilometros+=10
		if(energia % 20 == 0)
			kilometros+=15
			
		return kilometros
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras(){
		if(self.estaCansada())
			self.come(alpiste)
		
		if(self.estaFeliz())
			self.vola(8)
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var mojado = false
	
	method mojarse(){
		mojado = true
	}
	
	method secarse(){
		mojado = false
	}
	
	method energiaQueOtorga() {
		if(mojado) 
			return 15
		else  
			return 20
	}
}

object canelones {
	var queso = false
	var salsa = false
	
	method ponerSalsa(){
		salsa = true
	}
	
	method sacarSalsa(){
		salsa = false
	}	
	method ponerQueso(){
		queso = true
	}
	
	method sacarQueso(){
		queso = false
	}
	
	method energiaQueOtorga() {
		var joules = 20
		
		if(salsa) 
			joules += 5
		
		if(queso) 
			joules += 7
		
		return joules	
	}
}

object roque {
	method entrenar () {
		pepita.vola(10)
		pepita.come(alpiste)
		pepita.vola(5)
		pepita.haceLoQueQuieras()
	}
}