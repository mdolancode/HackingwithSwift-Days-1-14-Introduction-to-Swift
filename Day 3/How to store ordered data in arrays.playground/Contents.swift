import Cocoa


// arrays are indexed starting from 0
// arrays only hold one type of data at a time

var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("Adrian")
beatles.append("Allen")

let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(86)
print(scores[1])

var albums = [String]() // or -> Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

