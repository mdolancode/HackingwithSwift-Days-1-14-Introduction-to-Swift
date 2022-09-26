import Cocoa

// Checkpoint 6
// * Create a struct to store information about a car. Include:
    // * Its model
    // * Number of seats
    // * Curent gear
// * Add a method to change gears up or down.
// * Have a think about variables and access control.
// * Don't allow invalid gears - 1...10 seems a fair maximum range.


// Hints
// * A car's model and seat count won't change, but its current gear will.
// * Changing gears up or down should check such a change is possible.
// * If you use private access control, you might also need to create your own initializer. (But is private the best choice here?)
// * Remember the mutating keyword on methods that change properties!


/// Catches gears that are not found - anything below 1 or above 10
enum GearError: Error {
    case gearNotFound
}

struct Car {
    let model: String
    let numberOfSeats: Int
    var currentGear: Int
    
    init(model: String, numberofSeats: Int, currentGear: Int) {
        self.model = model
        self.numberOfSeats = numberofSeats
        self.currentGear = currentGear
    }
    
    /// Takes input of newGear, throws error if necessary, returns newGear
    mutating func gearChange(newGear: Int) throws -> Int {
        ///  Checks if gear is above or below max and throws error if that is so.
        if newGear < 1 || newGear > 10 {
            throw GearError.gearNotFound
        }
         
        /// Checks if newGear is above or below the currentGear.
         if newGear > currentGear {
            print("You up shifted your vehicle's gear!")
         } else if newGear < currentGear {
            print("You down shifted your vehicle's gear!")
         } else {
            print("You are going the same speed")
         }
        
        print("Your vehicle is in \(newGear)th gear!")
        /// returns the newGear
        return newGear
    }
    
}

var car = Car(model: "Outlander", numberofSeats: 7, currentGear: 1)
var shiftGears = 10

/// To catch errors.
do {
    _ = try car.gearChange(newGear: shiftGears)
} catch GearError.gearNotFound {
    print("Gear not found!")
}
