import Cocoa

// Access Control

struct BankAccount {
    private(set) var funds = 0 // 2. set funds to private so it can be only accessed inside the struct.
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)

let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successsfully")
} else {
    print("Failed to get the money")
}


//1.  Currently the funds can be accessed outside of the struct because the access control is set that way (which we don't want).
//account.funds -= 1000

// Types of access control to use when you are getting started

// private - Don't let anything outside the struct use this.
// fileprivate - Don't let anything outside the current file use this.
// public - Let anyone, anywhere use this.
// private (set) - Let anyone read this property internal or externally but only let my internal methods write it.

// If you have a private access control property inside your struct there is a good chance you will have to create your own custom initializer. 
