package concrete

import component.Coffee

class BasicCoffee(override val description: String, override var price: Float) : Coffee {}
