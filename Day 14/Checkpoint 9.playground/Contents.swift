import Cocoa

// Checkpoint 9
// * Write a function that accepts an optional array of integers, and returns one of those integers randomly.
// * If the array is missing or empty, return a new random number in the range of 1 through 100.
// * Write your function in a single line of code.

var nilArrayOfIntegers: [Int]? = nil

func randomInteger(arrayOfIntegers: [Int]?) -> Int {
    return arrayOfIntegers?.randomElement() ?? .random(in: 1...100)
}

print(randomInteger(arrayOfIntegers: [1, 2, 7, 9]))
print(randomInteger(arrayOfIntegers: nilArrayOfIntegers))

