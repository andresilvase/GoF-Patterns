// The Swift Programming Language
// https://docs.swift.org/swift-book

print("\nSelect a payment method below:\n")

print("1- PIX")
print("2- Credit Card")
print("3- Cash")
print("4- PayPal")
print("5- Google Pay")
print("6- Apple Pay\n")
print("Enter your choice", terminator: ": ")
if let paymentMethod = readLine() {
    handlePaymentMethodChoice(paymentMethod: paymentMethod)
}

private func handlePaymentMethodChoice(paymentMethod: String) {
    var shoppingCart: ShoppingCart?
    switch paymentMethod {
    case "1":
        shoppingCart = ShoppingCart(paymentMethod: PIXPaymentStrategy())
        break
    case "2":
        shoppingCart = ShoppingCart(paymentMethod: CreditCardPaymentStrategy())
        break
    case "3":
        shoppingCart = ShoppingCart(paymentMethod: CashPaymentStrategy())
        break
    case "4":
        shoppingCart = ShoppingCart(paymentMethod: PayPalPaymentStrategy())
        break
    case "5":
        shoppingCart = ShoppingCart(paymentMethod: GooglePayPaymentStrategy())
        break
    case "6":
        shoppingCart = ShoppingCart(paymentMethod: ApplePayPaymentStrategy())
        break
    default:
        print("Invalid payment method!!!!!!")
        return
    }

    shoppingCart!.pay(amount: 100.0)
}
