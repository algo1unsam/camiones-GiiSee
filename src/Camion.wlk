import conjCosas.*

object camion {

	var cargas = []
	var peligrosidadPermitida = 10
	var property cargaMax = 500

	method tieneCarga(carga) {
		return cargas.contains(carga)
	}

	method cargar(carga) {
		cargas.add(carga)
	}

	method descargarCosa(carga) {
		cargas.remove(carga)
	}

	method cargaActual() {
		return cargas.sum{ carga => carga.peso() }
	}

	method cargaDisponible() {
		return cargaMax - self.cargaActual()
	}

	method aceptaCosa(carga) {
		return carga.peso() <= self.cargaDisponible()
	}

	method cosaMasPeligrosa() {
		return cargas.max({ carga => carga.peligrosidad() })
	}

	method puedeCircular(ruta) {
		return (cargas.all({ carga => carga.peligrosidad() <= ruta.peligrosidadPermitida() }))
	}

	method peligrosidadPermitida() = peligrosidadPermitida

}

