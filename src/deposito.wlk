import conjCosas.*

object deposito {

	var cosas = []

	method pedido(cosa1, cosa2) {
		cosas.add(cosa1, cosa2)
	}

	method llenarCamion(camion) {
		return cosas.forEach({ unaCosa => camion.cargar(unaCosa) })
	}

}

