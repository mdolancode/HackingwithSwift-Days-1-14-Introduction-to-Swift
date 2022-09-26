import Cocoa


enum SquareRootError: Error {
    case outOfBounds
    case noRoot
}

func findSquareRoot(_ number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw SquareRootError.outOfBounds
    }
    
    for i in 1...100 {
        if number == i * i {
            return i
        }
    }
    throw SquareRootError.noRoot
}

let number = 100

do {
    let squareRoot = try findSquareRoot(number)
    print("The square root of \(number) is \(squareRoot).")
} catch SquareRootError.outOfBounds {
    print("The number \(number) is out of bounds.")
} catch SquareRootError.noRoot {
    print("The number \(number) has no root.")
}

