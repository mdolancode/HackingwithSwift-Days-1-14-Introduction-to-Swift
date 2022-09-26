import Cocoa

// Sets do not remeber order and they don't let duplicates

let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])

print(actors)

var comedians = Set<String>()

comedians.insert("Jimmy")
comedians.insert("Hama Chan")
comedians.insert("Ma Chan")

print(comedians)
