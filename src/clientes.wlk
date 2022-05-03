/*
 * Muy Bien
 */
object ludmila {
	
	/*Te dejo otra forma de hacerlo directamente con el = y sin return */
	method precioPorKm() = 18
}

object anaMaria {
	var estaEconomicamenteEstable = true
	
	method estaEconomicamenteEstable() = estaEconomicamenteEstable
	
	method estaEconomicamenteEstable(valor) {
		estaEconomicamenteEstable = valor
	}
	
	/*  
	 * Te dejo otra forma de hacerlo con el =
	*/
	method precioPorKm()= if (estaEconomicamenteEstable) {30}else{25}
}


object teresa {
	var precioPorKmActual = 22
	
	method precioPorKmActual() = precioPorKmActual
	
	method precioPorKmActual(precio) {
		precioPorKmActual = precio
	}
	method precioPorKm() {
		return precioPorKmActual
	}
}


object melina {
	var clientaParaLaQueTrabajaAhora
	
	method clientaParaLaQueTrabajaAhora() = clientaParaLaQueTrabajaAhora
	
	method clientaParaLaQueTrabajaAhora(clienta) {
		clientaParaLaQueTrabajaAhora = clienta
	}
	
	method precioPorKm() {
		return self.clientaParaLaQueTrabajaAhora().precioPorKm() - 3
	}
}
