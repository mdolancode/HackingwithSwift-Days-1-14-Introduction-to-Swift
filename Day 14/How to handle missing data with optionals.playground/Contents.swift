import Cocoa


// How to handle missing data with optionals

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

// Standard way of writing the above code is below. This is called shadowing.
if let number = number {
    print(square(number: number))
}
