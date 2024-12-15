package decorators

import component.Coffee
import concrete.BaseCoffeeDecorator

class MilkCoffee(coffee: Coffee) : BaseCoffeeDecorator(coffee) {
    override val description: String = super.description + ", Milk"
    override val price: Float = super.price + 0.5F
}
