import Cocoa

// Static Properties and Methods
struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

// 1. If you want to access non-static stuff from static stuff - it is NOT POSSIBLE.
// 2. If you want to access static stuff from non-static stuff - this IS POSSIBLE.
    // ie. School.studentCount or Self.studentCount
    // self - The current "value" of a struct - 55, "Hello", true
    // Self - The current "type" of struct - Int, String, Bool

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://hackingwithswift.com"
}

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "cfederighi", password: "h4irf0rce0ne")
    
}
