// The Swift Programming Language
// https://docs.swift.org/swift-book

func main() {
    let phone = Phone()

    let number = "1234567890"

    func call(_ number: String) {
        for digit in number {
            phone.pressButton(digit: String(digit))
        }
    }

    print("Calling...")
    call(number)
}

main()
