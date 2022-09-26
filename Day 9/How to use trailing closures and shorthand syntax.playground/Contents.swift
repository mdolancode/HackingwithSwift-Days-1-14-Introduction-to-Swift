import Cocoa

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

// First way to create a closure
//let sorted = team.sorted(by: { (a: String, b: String) -> Bool in
//    if a == "Suzanne" {
//        return true
//    } else if b == "Suzanne" {
//        return false
//    }
//    return a < b
//})

// Second way to create a closure
//let sorted = team.sorted(by: { a, b in
//    if a == "Suzanne" {
//        return true
//    } else if b == "Suzanne" {
//        return false
//    }
//    return a < b
//})

// Third way to create a closure
//let sorted = team.sorted { a, b in
//    if a == "Suzanne" {
//        return true
//    } else if b == "Suzanne" {
//        return false
//    }
//    return a < b
//}

// Fourth way to create a closure
let sorted = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}

//print(captainFirstTeam)

// More shorthand syntax

//let reverseTeam = team.sorted {
//    return $0 > $1
//}

// Even more shorthand syntax
let reverseTeam = team.sorted { $0 > $1 }

print(reverseTeam)
//When not you use shorth hand syntax
// 1. When the body is long use paramters
// 2. When you have to use $0 $1 multiple times
// 3. If you have three or more parameters lik $0, $1, $2, $3, etc. - Only use maximum $0 and $1.

let tOnly = team.filter { $0.hasPrefix("T") }

print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)
// When using map you can convert data from Int to String, etc.
