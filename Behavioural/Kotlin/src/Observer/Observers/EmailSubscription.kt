class EmailSubscription : Observer {
    override fun update(new: String) {
        println("\n\nEmail notification update: $new")
    }
}
