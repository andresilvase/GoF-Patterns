interface SortingStrategy<T> {
    fun sort(data: List<T>): List<T>
}
