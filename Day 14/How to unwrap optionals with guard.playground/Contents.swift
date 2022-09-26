import Cocoa


// How to unwrap optionals with guard

// * Swift requires you to use a return if a guard check fails.
// * If the optional you're unwrapping has a value, you can use it after the guard code finishes becuase it is still in scope.
// * Guard must be used inside a function.

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

var myVar: Int? = 3

//if let unwrapped = myVar {
    /// Run if myVar has a value inside the optional.
//}
//
//guard let unwrapped = myVar else {
    /// Run if myVar doesn't have a value inside inside the optional.
//    return
//}

// * Use "if let" if you just want to unwrap some optionals,
//   but prefer "guard let" if you're specifically checking that conditions are correct before continuing.


