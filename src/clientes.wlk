object ludmila {
	
	method precioPorKm() {
		return 18
	}
}

object anaMaria {
	var estaEconomicamenteEstable = true
	
	method estaEconomicamenteEstable() = estaEconomicamenteEstable
	
	method estaEconomicamenteEstable(valor) {
		estaEconomicamenteEstable = valor
	}
	
	method precioPorKm() {
		if (estaEconomicamenteEstable) {
			return 30
		} else {
			return 25
		}
	}
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
