import Cocoa

// How to handle multiple optionals using optional chaining

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

// "If the optional has a value inside, unwrap it then... carry on."
// Optional chaining will always be an optional.

// * We have an optional instance of a Book struct.
// * The book might have an author, or might be anonymous.
// * If it has an author, attempt to read the first letter.
// * If the first letter is there, uppercase it.

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)
