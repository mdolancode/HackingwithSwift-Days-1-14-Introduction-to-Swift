import Cocoa

// Checkpoint 8

// * Make a protocol that describes a building.
// * Your protocol should require the following:
//      * A property storing how many rooms it has.
//      * A property storing the cost as an integer.
//      * A property storing the name of the estate agent selling the building.
//      * A method for printing the sales summary of the building.
// * Create two sructs, House and Office, that conform to it.


protocol Building {
    var type: String { get set }
    var rooms: Int { get set }
    var cost: Int { get set }
    var realEstateAgent: String { get set }
    
    func salesSummary() -> Int
}

extension Building {
    func salesSummary() -> Int {
        let commision = cost / 10
        print("\(realEstateAgent) earned $\(commision) commision for selling \(type) for $\(cost).")
        return commision
    }
}

struct House: Building {
    var type = String()
    var rooms = Int()
    var cost = Int()
    var realEstateAgent = String()
}

struct Office: Building {
    var type = String()
    var rooms = Int()
    var cost = Int()
    var realEstateAgent = String()
}

let house = House(type: "house", rooms: 5, cost: 1_000_000, realEstateAgent: "Betty")
house.salesSummary()

let office = Office(type: "office building", rooms: 100, cost: 10_000_000, realEstateAgent: "Bob")
office.salesSummary()
