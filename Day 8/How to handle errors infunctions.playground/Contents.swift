import Cocoa

// How to handle errors in functions

// 1. define the problems that can occur inside the function

enum PasswordError: Error {
    case short, obvious
}

// 2. Write a function that will trigger one or more of those errors

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "738978"

do {
    let result = try checkPassword(string) // try must be written to let others know it might catch an error
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch { // catch all error is called a Pokemon catch because you gotta catch em all. lol.
    print("There was an error: \(error.localizedDescription)") // <--- localized error from Apple
}


// Catch errors
//do {
//    try someRiskyWork()
//} catch {
//    print("Handle errors here")
//}

