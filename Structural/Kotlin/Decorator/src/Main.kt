import component.Coffee
import concrete.BasicCoffee
import decorators.MilkCoffee
import decorators.SugarCoffee
import decorators.WhippedCreamCoffee

fun main() {
    val coffee: Coffee = BasicCoffee("Coffee", 2.50F)

    val coffeeMilk: MilkCoffee = MilkCoffee(coffee)
    val coffeeSugar: SugarCoffee = SugarCoffee(coffee)
    val coffeeMilkSugar: SugarCoffee = SugarCoffee(coffeeMilk)
    val coffeeWhippedCream: WhippedCreamCoffee = WhippedCreamCoffee(coffee)
    val coffeeMilkWhippedCream: WhippedCreamCoffee = WhippedCreamCoffee(coffeeMilk)
    val coffeeSugarWhippedCream: WhippedCreamCoffee = WhippedCreamCoffee(coffeeSugar)
    val coffeeMilkSugarWhippedCream: WhippedCreamCoffee = WhippedCreamCoffee(coffeeMilkSugar)

    println("Welcome to the ANJA's Coffee Shop!")
    println("Please, choose your favorite coffee from the menu below:")
    println("1 - Coffee")
    println("2 - Coffee, Milk")
    println("3 - Coffee, Suggar")
    println("4 - Coffee, Milk, Sugar")
    println("5 - Coffee, Whipped Cream")
    println("6 - Coffee, Milk, Whipped Cream")
    println("7 - Coffee, Sugar, Whipped Cream")
    println("8 - Coffee, Milk, Sugar, Whipped Cream")
    print("\nMake your choice: ")
    val op: String? = readLine()
    val opInt: Int = op?.toInt() ?: 0

    fun handleChoice(coffee: Coffee) {
        println("You've chosen ${coffee.description}. It will cost $ ${coffee.price}")
    }

    when (opInt) {
        1 -> handleChoice(coffee)
        2 -> handleChoice(coffeeMilk)
        3 -> handleChoice(coffeeSugar)
        4 -> handleChoice(coffeeMilkSugar)
        5 -> handleChoice(coffeeWhippedCream)
        6 -> handleChoice(coffeeMilkWhippedCream)
        7 -> handleChoice(coffeeSugarWhippedCream)
        8 -> handleChoice(coffeeMilkSugarWhippedCream)
        else -> println("Ops! It seems you've selected an invalid option.")
    }
}
