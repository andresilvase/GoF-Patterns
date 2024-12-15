package decorators

import concrete.BaseCoffeeDecorator
import component.Coffee

class SugarCoffee(coffee: Coffee) : BaseCoffeeDecorator(coffee) {
    override val description: String = super.description + ", Sugar"
    override val price: Float = super.price + 0.25F
}
