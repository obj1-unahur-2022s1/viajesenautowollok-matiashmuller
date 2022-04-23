import clientes.*


object roxana {
	
	method precioViaje(cliente, kms) {
		return cliente.precioPorKm() * kms
	}
}

object gabriela {
	
	method precioViaje(cliente, kms) {
		return cliente.precioPorKm() * kms * 1.2
	}
}

object mariela {
	
	method precioViaje(cliente, kms) {
		return 50.max(cliente.precioPorKm() * kms)
	}
}

object juana {
	
	method precioViaje(cliente, kms) {
		if (kms <= 8) {
			return 100
		} else {
			return 200
		}
	}
}

object lucia {
	var companeraReemplazada
	
	method companeraReemplazada() = companeraReemplazada
	
	method companeraReemplazada(remisera) {
		companeraReemplazada = remisera
	}
	
	method precioViaje(cliente, kms) {
		return self.companeraReemplazada().precioViaje(cliente, kms)
	}
}