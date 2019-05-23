class Hogar {
	var property mugre = 0;
	var property confort = 0;
		
	method esBuene() { return mugre <= confort / 2 }
	method fueAtacade(plaga) { mugre = mugre + plaga.nivelDeDanio() }
}

class Huerta {
	var property capacidadDeProduccion = 0;
	
	method esBuene() { return capacidadDeProduccion > configuracionHuerta.nivelActual(); }
}

object configuracionHuerta {
	var property nivelActual = 300;
}

class Mascota {
	var property nivelDeSalud
	
	method esBuene() { return nivelDeSalud > 250 }
}

class Barrio {
	var elementos = #{}
	
	method agregarElemento(elem) { elementos.add(elem); }
	method agregarElementos(elems) { elementos.addAll(elems); }
	method elementosBuenos() {
		return elementos.filter({elemento => elemento.esBuene() })
	}
	method elementosMalos() {
		return elementos.filter({elemento => not elemento.esBuene() })
	}
	method esCopado() { return self.elementosBuenos().size() > self.elementosMalos().size() }
}



