import Cocoa

func showWelcome() {
    print("Welcome to my app!")
}

showWelcome() // <-- function's call site - a place where it is called or run

let number = 139

if number.isMultiple(of: 2) { // Customize the function's behaviour
    print("Even")
} else {
    print("Odd")
}

let roll = Int.random(in: 1...20)


func printTimesTables(number: Int, end: Int) { // <---- has parameters, number end become constants - a placeholder
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}
// any data you put inside the function will be destroyed once it is finished.

printTimesTables(number: 5, end: 20) // <--- arguements - a value
