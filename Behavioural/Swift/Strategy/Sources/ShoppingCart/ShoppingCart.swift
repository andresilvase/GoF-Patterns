class ShoppingCart {
    init(paymentMethod: PaymentStrategy) {
        setPaymentMethod(paymentMethod: paymentMethod)
    }

    private var paymentMethod: PaymentStrategy?

    private func setPaymentMethod(paymentMethod: PaymentStrategy) {
        self.paymentMethod = paymentMethod
    }

    func pay(amount: Double) {
        paymentMethod?.pay(amount: amount)
    }
}
