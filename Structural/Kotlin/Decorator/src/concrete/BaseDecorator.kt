package concrete

import component.Coffee

open class BaseCoffeeDecorator(val coffee: Coffee) : Coffee {
    override val description = coffee.description
    override val price = coffee.price
}
