import kotlin.random.Random

data class Person(val name: String, val age: Int, val gender: String) : Comparable<Person> {
    override fun compareTo(other: Person): Int {
        val ageComparison = this.age.compareTo(other.age)

        if (age != 0) {
            return ageComparison
        }

        return this.name.compareTo(other.name)
    }
}

fun generatePerson(): List<Person> {
    val list: MutableList<Person> = mutableListOf<Person>()

    for (i in 1..10) {
        var gender: String
        if (i % 2 == 0) gender = "Male" else gender = "Female"

        list.add(Person("Pessoa ${i}", Random.nextInt(18, 34), gender))
    }

    return list
}
