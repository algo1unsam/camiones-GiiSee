import conjCosas.*

object deposito {

	var cosas = []
	
	// TODO acá la idea era que el deposito reciba las cosas de a varias, pero pueden
	// ser mas de dos, o una sola... con esto no lo cubrireias
	// debería recibir una lista, que se agregan todas juntas 
	method pedido(cosa1, cosa2) {
		cosas.add(cosa1, cosa2)
	}

	// TODO este método está ok, sólo diria de cambiar le nombre del parámetro
	// para que quede bien en el caso que sea una motoneta (y en el futuro podrían ser
	// incluso otros), por ejemplo "transporte"
	method llenarCamion(camion) {
		return cosas.forEach({ unaCosa => camion.cargar(unaCosa) })
	}

}

