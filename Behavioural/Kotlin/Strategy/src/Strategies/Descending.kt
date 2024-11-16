class Descending<T : Comparable<T>> : SortingStrategy<T> {
    override fun sort(data: List<T>): List<T> {
        return data.sortedDescending()
    }
}
