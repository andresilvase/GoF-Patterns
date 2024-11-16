class WomanFirst : SortingStrategy<Person> {
    override fun sort(data: List<Person>): List<Person> {
        val woman = data.filter { it.gender == "Female" }
        val man = data.filter { it.gender == "Male" }
        return woman + man
    }
}
