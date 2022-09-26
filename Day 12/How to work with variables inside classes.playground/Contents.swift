import Cocoa

// How to work with variables inside classes
class User {
    var name = "Paul"
}

var user = User()
user.name = "Taylor"
user = User()
print(user.name)


// 4 possible situations for classes
// 1. Constant class, constant property - Signpost that always points to the same user, who always has the same name.
// 2. Constant class, variable property - Signpost that always points to the same user, but their name can change.
// 3. Variable class, constant property - Signpost that can point to different users, but their names never change.
// 4. Variable class, variable property - Signpost that can point to different users, and those users can also change their names.

// Struct - Int, Int, Bool, String, Array<String>, etc. - these are all constant and cannot be changed.
// Class - Int, Int, Bool, String, Array<String>, etc. - they are a reference and the data can change without changing the class.
// classes do not have to have the mutating keyword for methods that are changing the data. Swift can tell what is a variable or a constant within a class and knows what can be changed or not.
