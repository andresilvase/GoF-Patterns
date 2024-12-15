package decorators

import component.Coffee
import concrete.BaseCoffeeDecorator

class WhippedCreamCoffee(coffee: Coffee) : BaseCoffeeDecorator(coffee) {
    override val description: String = super.description + ", Whipped Cream"
    override val price: Float = super.price + 1.25F
}
