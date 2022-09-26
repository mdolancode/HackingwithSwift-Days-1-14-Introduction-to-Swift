import Cocoa

// How to use opaque return types

// SwiftUI has the View protocol that uses some View and assembles the views for usin an easy way so we don't have to write out so much code.
protocol View { }

// Swift always knows what type of data it should return
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())


