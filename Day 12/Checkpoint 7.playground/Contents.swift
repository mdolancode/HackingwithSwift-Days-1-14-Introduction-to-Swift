import Cocoa

// Checkpoint 7
// * Make a class hierarchy for animals.
// Start with Animal. Add a legs property for the number of legs an animal has.
// * Make Dog a subclass of Animal, giving it a speak() method that prints a dog barking string, but each subclass should print something different.
// * Make Corgi and Poodle subclasses of Dog.
// * Make Cat an Animal subclass. Add a speak() method, with each subclass printing something different, and an isTame Boolean, set with an initializer.
// * Make a Persian and Lion as subclasses of Cat.

class Animal {
    var numberOfLegs: Int
    init(numberOfLegs: Int) {
        self.numberOfLegs = numberOfLegs
    }
}

class Dog: Animal {
    func speak() {
        print("The Dog says Bark, bark!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("The Corgi says, yelp, yelp!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("The Poodle says, ow, ow!")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(numberOfLegs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(numberOfLegs: numberOfLegs)
    }
    
    func speak() {
        print("The Cat says, meow, meow!")
    }
}

class Persian: Cat {
    
    override init(numberOfLegs: Int, isTame: Bool) {
        super.init(numberOfLegs: numberOfLegs, isTame: isTame)
    }
    
    override func speak() {
         print("The Persian says, purr, purr!")
    }
}

class Lion: Cat {
    override func speak() {
         print("The Lion says, roar, roar!")
    }
}

let animal = Animal(numberOfLegs: 4)
print("The animal has \(animal.numberOfLegs) legs!")

let dog = Dog(numberOfLegs: 4)
print("The dog has \(dog.numberOfLegs) legs!")
dog.speak()

let corgi = Corgi(numberOfLegs: 4)
print("The corgi has \(corgi.numberOfLegs) legs!")
corgi.speak()

let poodle = Poodle(numberOfLegs: 4)
print("The poodle has \(poodle.numberOfLegs) legs!")
poodle.speak()

let cat = Cat(numberOfLegs: 4, isTame: true)
print("The cat has \(cat.numberOfLegs) legs!")
print("Are cat's tame? \(cat.isTame)")
cat.speak()

let persian = Persian(numberOfLegs: 4, isTame: true)
print("The persian has \(persian.numberOfLegs) legs!")
print("Are persians tame? \(persian.isTame)")
persian.speak()

let lion = Lion(numberOfLegs: 4, isTame: false)
print("The lion has \(lion.numberOfLegs) legs!")
print("Are lions tame? \(lion.isTame)")
lion.speak()
