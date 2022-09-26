import Cocoa

// How to unwrap optionals with nil coalescing.
// * It is useful any where you have an optional.
// * And you want to use the value inside the optional or provide a default value if the value is missing.

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

// new will not be an optional string.
let new = captains["Serenity"] ?? "N/A"

// Or this below... dictionaries can provide a default value for when the key is not found.
let new2 = captains["Dr. Spock", default: "N/A"]

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favourite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let number = Int(input) ?? 0
print(number)
