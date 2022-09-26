import Cocoa
import Foundation

// Type inference

let surname = "Lasso" // <-- infered a string because a string is the value
var score = 0 // <-- infered an int because an int/whole is the value

// Explicit
let surname2: String = "Lasso2"
let score2: Int = 0

var score3: Double = 0 // <-- override and telling Swift the value is a double and not and int

// Type Annotation
let playerName: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = true

// Complex Types
// Specialized Values
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set([
    "The Bluest Eye",
    "Foundation",
    "Girl, Woman, Other"
])

var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]

// You can customize this array to look the way you want. Below all three do the same thing.
var teams: [String] = [String]() // <-- Type inference and a new string
var cities: [String] = [] // <-- Type inference and empty brackets
var clues = [String]() // <-- No Type Inference and an array of strings

// enums

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light // or can be var style: UIStyle = UIStyle.light
style = .dark


// prefferable to use type inference over type annotation

// Type annotation when setting a value later
let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)

// One Golden rule - Swift must know what types your variables and constants contain. It must.

// 3 Reasons to use type annotation

//1. Swift can't figure out what type should be used.
//2. You want Swift to use a different type from its default.
//3. You don't want to assign a value just yet.
