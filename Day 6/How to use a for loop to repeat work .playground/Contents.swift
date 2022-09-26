import Cocoa

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

// each item in the array goes into the os.
for os in platforms {
    // os is the loop variable that is only available inside the loop and the value of it will change with every iteration
    // loop body is inside the loop
    // loop iteration is one cycle through the loop
    print("Swift works great on \(os)")
}

// regular for loop
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1...12 {
    print("The \(i) times table")
    
    // nested loop
    for j in 1...12 {
        print("     \(j) x \(i) is \(j * i)")
    }
    
    print()
}

for i in 1...5 { // 1 through 5
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 { // 1 up to 5
    print("Counting from 1 up to 5: \(i)")
}

print()

var lyric = "Haters gonna"
for _ in 1...5 {
    lyric += " hate"
}

print(lyric)
