class NewsChannel {
    val listerners: ArrayList<Observer> = ArrayList<Observer>()

    var breakingNew: String

    init {
        breakingNew = ""
    }

    fun addListerner(listener: Observer): Unit {
        listerners.add(listener)
    }

    fun removeListerner(listerner: Observer): Unit {
        listerners.remove(listerner)
    }

    fun stateChange(new: String): Unit {
        breakingNew = new

        notifyListeners()
    }

    fun notifyListeners(): Unit {
        for (listener in listerners) {
            listener.update(breakingNew)
        }
    }
}
