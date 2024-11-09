// The Swift Programming Language
// https://docs.swift.org/swift-book

let string: String = "Hello, world!"
var string2: String = ""

for i in 0...5 {
    string2 += "\(i)"
}

print(string[string.index(string.startIndex, offsetBy: 0)])
print(string2.dropFirst(2))
