
class Acompaniante {
	var energia
	var mochila = #{}
	
	method recolectar(unMaterial) {
		if (mochila.size() >= 3) {
			self.error("No puede tener mas de 3 materiales en la mochila.")
		}
		mochila.add(unMaterial)
	}
	
}