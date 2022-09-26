import Cocoa

var numbers = 1...100
//for number in numbers {
//    if number % 3 == 0 && number % 5 == 0 {
//        print("FizzBuzz")
//    } else if number % 3 == 0 {
//        print("Fizz")
//    } else if number % 5 == 0 {
//        print("Buzz")
//    } else {
//        print(number)
//    }
//}

for number in numbers {
    if number.isMultiple(of: 3) && number.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if number.isMultiple(of: 3) {
        print("Fizz")
    } else if number.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(number)
    }
}
