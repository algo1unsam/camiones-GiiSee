import conjCosas.*

object camion {

	var cargas = []
	var peligrosidadPermitida = 10
	var property cargaMax = 500

	method tieneCarga(carga) {
		return cargas.contains(carga)
	}

	// TODO no valida la carga antes de cargar??
	// todo elemento que se agrega debe ser removido del depósito 
	method cargar(carga) {
		cargas.add(carga)
	}

	method descargarCosa(carga) {
		cargas.remove(carga)
	}

	method cargaActual() {
		// TODO acá quisiste poner cargas?
		return cargas.sum{ carga => carga.peso() }
	}

	method cargaDisponible() {
		return cargaMax - self.cargaActual()
	}

	method aceptaCosa(carga) {
		return carga.peso() <= self.cargaDisponible()
	}

	method cosaMasPeligrosa() {
		// TODO usar la lista!
		return cargas.max({ carga => carga.peligrosidad() })
	}

	method puedeCircular(ruta) {
		return (cargas.all({ carga => carga.peligrosidad() <= ruta.peligrosidadPermitida() }))
	}

	method peligrosidadPermitida() = peligrosidadPermitida

}

