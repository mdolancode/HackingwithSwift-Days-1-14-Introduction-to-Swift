import Cocoa

// How to create and use extensions

// Extensions let us add functionality to classes, structs and more which is helpful for modifying types we don't own - types that were writen by Apple.
// Methods added using extensions are the same and methods written originaly part of the type.
// If you are returning a new value use ed or ing at the end.
// Only use computed properties in extensions and not stored properties.
// Extensions are also useful for organizing and maintaining code. 2 examples are: conformance grouping and purpose grouping.
// Conformance grouping: means adding a protocol conformance to a type as an extension, adding all the required methods inside that extension.
// Purpose grouping: means creating an extension to do specific tasks, which makes it easier to work with large types. Example: An extension that specifically handles loading and saving of that type.
// Many folks will use extensions to break up large classes to make them easier to understand. 

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var quote = "      The truth is rarely pure and never simple    "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
quote.trimmed()

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)
