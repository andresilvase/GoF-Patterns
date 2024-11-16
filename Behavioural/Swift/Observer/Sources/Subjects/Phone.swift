//
//  Phone.swift
//  Observable
//
//  Created by André Felipe Silva on 15/10/24.
//

struct Button: Observer {
    let digit: String

    init(digit: String) {
        self.digit = digit
    }

    func update(msg: String) {
        print(msg)
    }
}

struct Phone {
    var buttons: [Observer] = []

    init() {
        self.addButtons()
    }

    mutating private func addButtons() {
        for i in 1...12 {
            let button: Button = Button(digit: "\(i)")
            self.buttons.append(button)

        }
    }

    func pressButton(digit: String) {

    }
}
