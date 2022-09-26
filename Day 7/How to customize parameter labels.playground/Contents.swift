import Cocoa

// Two ways for external parameters

// 1st way
func isUppercased(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercased(string)


// 2nd way
func printTimesTable(for number: Int) { // <-- for is the external parameter, number is the internal parameter
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)") // number used here as internal parameter
    }
}

printTimesTable(for: 5) // for used here for external parameter
