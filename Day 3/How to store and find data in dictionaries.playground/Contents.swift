import Cocoa

// Dictionary -> left: keys, right: values

let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olymics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2020: "Tokyo"
]

print(olymics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"



