class PlagaCucarachas {
	var property poblacion
	var property pesoPromedio
	
	method nivelDeDanio() { return poblacion / 2 }
	method transmiteEnfermedades() { return poblacion > 10 and pesoPromedio >= 10 }
}

class PlagaPulgas {
	var property poblacion	
	
	method nivelDeDanio() { return poblacion * 2 }
	method transmiteEnfermedades() { return poblacion > 10 }
}

class PlagaMosquitos {
	var property poblacion	
	
	method nivelDeDanio() { return poblacion }
	method transmiteEnfermedades() { return poblacion > 10 and poblacion % 3 == 0 }
}
