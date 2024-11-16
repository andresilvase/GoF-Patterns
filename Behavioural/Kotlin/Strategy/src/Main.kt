fun main() {
    val list: List<Int> = listOf<Int>(2, 3, 1, 2, 8, 4, 93, 4, 67, 5)
    val ascendingSortData: SortData<Int> = SortData<Int>(Ascending())
    ascendingSortData.sort(list)

    val descendingSortData: SortData<Int> = SortData<Int>(Descending())
    descendingSortData.sort(list)

    val peopleList: List<Person> = generatePerson()
    val evenFirstSortData: SortData<Person> = SortData<Person>(WomanFirst())
    evenFirstSortData.sort(peopleList)
}
