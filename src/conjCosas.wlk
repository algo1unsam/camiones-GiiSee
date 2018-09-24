object knightRider {

	var property peso = 500
	var peligrosidad = 10

	method peso() = peso

	method peligrosidad() = peligrosidad

}

object bumblebee {

	var property peso = 800
	// TODO acá lo mejor sería usar objetos, evitemos usar strings :)
	// si usabas objetos, cada uno podría tener la info de la peligrosidad
	var property forma =  'auto' 

	method peligrosidad() {
		if (self.forma() == "auto") {
			return 15
		} else {
			return 30
		}
	}
   method peso() = peso 

}

object paqueteLadrillos {

	var property peso = 2
	var property cantLadrillos = 20
	var peligrosidad = 2

	method cantLadrillos() = cantLadrillos

	method peso() = peso * cantLadrillos

	method peligrosidad() = peligrosidad

}

// TODO falta el contenedor y el embalaje

