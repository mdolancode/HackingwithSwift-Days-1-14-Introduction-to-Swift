import Cocoa

// Checkpoint 5
// sorted, filter, map
// Your input is this:
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

/* Your job is to:
        * Filter out any numbers that are even
        * Sort the array in acccending order
        * Map them to strings in the formate "7 is a lucky number"
        * Print the resulting array, one item per line
*/

var findLuckyNumbers: [()] = luckyNumbers.filter { !$0.isMultiple(of: 2) }.sorted().map { print("\($0) is a lucky number!") }
