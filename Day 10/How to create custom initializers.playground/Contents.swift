import Cocoa

// 1. no func keyword
// 2. no explicit return type
// 3. use self to assign values

//struct Player {
//    let name: String
//    let number: Int
//
//    init(name: String, number: Int) {
//        self.name = name
//        self.number = number
//    }
//}

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)


// Golden Rule: By the time the initializer finishes all properties must have a value.
// If you use a custom initialzer then the default intializer will not be available. (BUT, there is a way to use it and we will learn soon in the course.)

