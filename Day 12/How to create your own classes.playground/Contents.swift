import UIKit

/// How to create your own classes
///
/// Structs and classes are similar in the following ways
/// 1. You get to create and name them.
/// 2. Add properties, methods, property observers, and access control.
/// 3. Create custom initializers to configure new instances.
///
/// Structs and classes are different in the following ways
/// 1. You can make one class build upon functionality in another class.
/// 2. Swift won't generate a memberwise initializer for classes.
/// 3. If you copy an instance of a class, both copies share the same data.
/// 4. We can add a deinitializer to run when the final copy is destroyed.
/// 5. Constant class instances can have their variable properties changed.
///

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10
