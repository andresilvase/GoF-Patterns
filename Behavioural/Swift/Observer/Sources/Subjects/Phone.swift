//
//  Phone.swift
//  Observable
//
//  Created by André Felipe Silva on 15/10/24.
//

struct Button: Observer {
    func update(msg: String) {
        print(msg, terminator: "")
    }
}

// This is not a good approach to the pattern Observer since the notification is being sent
// to only a specific observer. But still hold the all framework of how the pattern works!
struct Phone {
    var buttons: [String: Observer] = [:]

    init() {
        self.addButtons()
    }

    // Subscription
    mutating private func addButtons() {
        for i in 1...12 {
            var digit: String

            if i == 10 {
                digit = "*"
            } else if i == 11 {
                digit = "0"
            } else if i == 12 {
                digit = "#"
            } else {
                digit = "\(i)"
            }

            buttons[digit] = Button()
        }
    }

    // Action
    func pressButton(digit: String) {
        notifyListerners(digit)
    }

    func notifyListerners(_ digit: String) {
        let button = buttons[digit]
        button?.update(msg: digit)
    }
}
