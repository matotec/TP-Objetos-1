
class Acompaniante {
	var energia
	var mochila = #{}
	
	constructor (unaEnergia) {
		energia = unaEnergia
	}
	
	method recolectar(unMaterial) {
		self.validarRecoleccion(unMaterial)
		//mochila.add(unMaterial)
		unMaterial.aplicarEfectoAlRecolectar(self)
	}
	
	method energia() = energia
	
	method energia(unaEnergia) {
		energia = unaEnergia
	}
	
	method agregarMaterialAMochila(unMaterial) {
		mochila.add(unMaterial)
	}
	
//	method validarRecoleccion2(unMaterial) {
//		if (mochila.size() >= 3) {
//			self.error("No puede tener mas de 3 materiales en la mochila.")
//		}
//		
//		if (unMaterial.costoEnergeticoDeRecoleccion() > energia) {
//			self.error("No posee energia para recolectar ese material.")
//		}
//	}


	method validarRecoleccion(unMaterial) {
		if (not self.puedeRecolectar(unMaterial)) {
			self.error("No se puede recolectar ese material.")
			//self.validarRecoleccion2(unMaterial)
		}
	}
	
	method puedeRecolectar(unMaterial) {
		return mochila.size() < 3 and unMaterial.costoEnergeticoDeRecoleccion() <= energia
	}
	
	method darObjetosA(unCompaniero) {
		unCompaniero.recibirObjetos(self.objetosDeMiMochila()) //en parentesis deberia ir "self"?
	}
	
	method objetosDeMiMochila() {
		return mochila
	}
}


class Morty inherits Acompaniante {
	
	
}


class Material {
	
	
	method aplicarEfectoDeRecoleccion(unAcompaniante) {
		unAcompaniante.energia(unAcompaniante.energia()-self.costoEnergeticoDeRecoleccion())
		unAcompaniante.agregarMaterialAMochila(self)
	}
	
	method costoEnergeticoDeRecoleccion() {
		return 0
	}
}


class Rick {
	
	method recibirMochila(unaColeccion) {
		
	}
}