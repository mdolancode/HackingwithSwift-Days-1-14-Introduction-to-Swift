import Cocoa

// Using a tuple to return multiple values

/*
 * Swift can't know ahead of time if a dictionary keys are present.
 * When you access tuple values, Swift knows it will be there.
 * We access values using user.firstName, not a string.
 * Dictionary might contain hundreds of other values.
 */

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")



func getUUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let (firstName, lastName) = getUUser() // <-- this way is called destructuring
print("Name: \(firstName) \(lastName)")



func getUser2() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

let user2 = getUser2()
print("Name: \(user2.firstName) \(user2.lastName)")


func getUser3() -> (String, String) {
    ("Taylor", "Swift")
}

let user3 = getUser3()
print("Name: \(user2.0) \(user2.1)")
