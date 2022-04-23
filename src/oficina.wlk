import remiseras.*
import clientes.*

object oficina {
	var primeraOpcion
	var segundaOpcion
	
	method primeraOpcion() = primeraOpcion
	method segundaOpcion() = segundaOpcion
	
	method asignarRemiseras(remisera1, remisera2) {
		primeraOpcion = remisera1
		segundaOpcion = remisera2
	}
	
	method cambiarPrimeraRemiseraPor(remisera) {
		primeraOpcion = remisera
	}
	
	method cambiarSegundaRemiseraPor(remisera) {
		segundaOpcion = remisera
	}
	
	method intercambiarRemiseras() {
		const primeraOpcionAnterior = primeraOpcion
		
		self.cambiarPrimeraRemiseraPor(segundaOpcion)
		self.cambiarSegundaRemiseraPor(primeraOpcionAnterior)
	}
	
	method segundaRemiseraEsMasBarata(cliente,kms) {
		return self.primeraOpcion().precioViaje(cliente,kms) - 
			   self.segundaOpcion().precioViaje(cliente,kms) > 30
	}
	
	method remiseraElegidaParaViaje(cliente, kms) {
		if(self.segundaRemiseraEsMasBarata(cliente,kms)) {
			return self.segundaOpcion()
		} else {
			return self.primeraOpcion()
		}
	}
}
