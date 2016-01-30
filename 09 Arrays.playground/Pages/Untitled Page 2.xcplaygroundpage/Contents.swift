//: [Previous](@previous)

import Foundation

var bucketList = ["Climb Mt. Everest"]

var newItems = ["Fly hot air balloon to Fiji",
  "Watch Lord of the Rings trilogy in one day",
  "Go on a walkabout",
  "Scuba dive in the great blue hole",
  "Find a triple rainbow"
]

//for item in newItems {
//  bucketList.append(item)
//}

bucketList += newItems

bucketList.removeAtIndex(2)
bucketList
print(bucketList.count)
print(bucketList[0...2])
bucketList[2] += " in Australia"
bucketList
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList.insert("Toboggan across Alaska", atIndex: 2)


var myronsList = ["Climb Mt. Kilimanjaro",
  "Fly hot air balloon to Fiji",
  "Toboggan across Alaska",
  "Go on a walkabout in Australia",
  "Scuba dive in the great blue hole",
  "Find a triple rainbow"
]

let equal = (bucketList == myronsList)

//immutable arrays

let lunches = [
  "Cheeseburger",
  "Veggie Pizza",
  "Chicken Caeser Salad",
  "Black Bean Burrito",
  "Falafel Wrap"
]

var toDoList = [
  "Take out garbage",
  "Pay Bills",
  "Cross off finished items"
]

let toDoListReverse = toDoList.reverse()
let backwardsToDo = Array(toDoListReverse)
backwardsToDo



//: [Next](@next)
