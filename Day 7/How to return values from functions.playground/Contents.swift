import Cocoa
import Darwin

let root = sqrt(169) // Set to the function's return value

print(root)


func rollDice() -> Int { // will send back an integer
    return Int.random(in: 1...6) // here is the integer I promised
}

let result = rollDice()
print(result)

/*
 * Do two strings contain the same letters, regardless of their order?
 * This function should:
    * Accept two string parameters
    * Return true if their letters are the same
 
 Tip: Call sorted() on a string to get its letters in alphabetical order
 */

// My solution
func sameLetter(word1: String, word2: String) -> Bool {
    let wordA = word1.sorted()
    let wordB = word2.sorted()
    
    if wordA == wordB {
        return true
    } else {
        return false
    }
}

sameLetter(word1: "bagpipe", word2: "pipebag")

// Paul's 1st solution
func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

// Paul's second solution
func areLettersIdentical2(string1: String, string2: String) -> Bool {
//    return string1.sorted() == string2.sorted()
    // Can remove return when there is only one line of code. Only works when you have one single line of code and it must return the data to be returned.
    string1.sorted() == string2.sorted()
}

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)

// My solution for one line - Soulution Not right afterall
//func pythagoras2(a: Double, b: Double) -> Double {
//    sqrt(a) + sqrt(b)
//}
//
//let cd = pythagoras2(a: 3, b: 4)
//print(cd)


// Paul's solution for onle line - Correct way
func pythagoras3(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let ccc = pythagoras3(a: 3, b: 4)
print(ccc)

// If function does not return a value you can still use return by itself to force a function to exit immediately.
func sayHello() {
    return
}

