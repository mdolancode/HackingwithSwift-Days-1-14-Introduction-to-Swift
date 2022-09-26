import Cocoa

/// How to add initializers for classes

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertable: Bool
    
    init(isElectric: Bool, isConvertable: Bool) {
        self.isConvertable = isConvertable
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertable: false)

// If a child class doesn't have any of it's own initializers, and doesn't need any custom initializing it will automatically inherit the initializers from it's parent class.

