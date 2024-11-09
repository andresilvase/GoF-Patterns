fun main() {
    // Observable (Subject) instance
    val newsChannel: NewsChannel = NewsChannel()

    // Observer instances
    val emailSubscription: EmailSubscription = EmailSubscription()

    // Subscribe observers to the subject
    newsChannel.addListerner(emailSubscription)

    // Update state in the subject
    newsChannel.stateChange("Breaking News: A new groundbreaker mobile application is coming up!")
}
