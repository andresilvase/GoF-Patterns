protocol PaymentStrategy {
    func pay(amount: Double)
}

class PIXPaymentStrategy: PaymentStrategy {
    func pay(amount: Double) {
        print("Paying \(amount) with PIX")
    }
}

class CreditCardPaymentStrategy: PaymentStrategy {
    func pay(amount: Double) {
        print("Paying \(amount) with Credit Card")
    }
}

class CashPaymentStrategy: PaymentStrategy {
    func pay(amount: Double) {
        print("Paying \(amount) with Cash")
    }
}

class PayPalPaymentStrategy: PaymentStrategy {
    func pay(amount: Double) {
        print("Paying \(amount) with PayPal")
    }
}

class GooglePayPaymentStrategy: PaymentStrategy {
    func pay(amount: Double) {
        print("Paying \(amount) with Google Pay")
    }
}

class ApplePayPaymentStrategy: PaymentStrategy {
    func pay(amount: Double) {
        print("Paying \(amount) with Apple Pay")
    }
}
