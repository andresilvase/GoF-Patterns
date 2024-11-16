class SortData<T : Comparable<T>> {
    var sortingStrategy: SortingStrategy<T>

    constructor(sortingStrategy: SortingStrategy<T>) {
        this.sortingStrategy = sortingStrategy
    }

    fun sort(data: List<T>) {
        val sortedData = sortingStrategy.sort(data)
        println("Data sorted by ${sortingStrategy::class}: ${sortedData}")
    }
}
