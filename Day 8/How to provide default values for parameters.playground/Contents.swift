import Cocoa

// How to provide default values for parameters - Allow for flexibility - set defaults for those you only care about and the rest leave false most of the time.
func printTimesTable(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(for: 5, end: 20)
printTimesTable(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true) // To leave a capacity for future storage when you know you need it.
print(characters)
