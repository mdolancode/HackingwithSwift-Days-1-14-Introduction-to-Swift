import Cocoa


// How to create a deinitializer for a class
// 1. You don't use func with deinitializers
// 2. Deinitializers can never take parameters or return data.
// 3. Deinitializers run when the last copy of a class instance is destroyed.
// 4. We never call deinitializers directly.
// 5. Structs don't have deinitializers.

class User {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")
