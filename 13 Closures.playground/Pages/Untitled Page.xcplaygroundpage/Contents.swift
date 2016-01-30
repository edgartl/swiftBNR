//: Closures

import Cocoa

var volunteerCounts = [1,3,40,32,2,53,77,13]

// < will result in Ascending | > will result in Descending

//func sortAscending(i: Int, j: Int) -> Bool {
//  return i < j
//}
//
//let volunteersSorted = volunteerCounts.sort(sortAscending)

// Closure expression syntax

//let volunteersSorted = volunteerCounts.sort({
//  (i: Int, j: Int) -> Bool in
//  return i < j
//})

// Type inference

//let volunteersSorted = volunteerCounts.sort({i, j in i < j})

// Shorthand Syntax

//let volunteersSorted = volunteerCounts.sort({ $0 < $1 })

// Inline closure as final argument

let volunteersSorted = volunteerCounts.sort{ $0 < $1 }

// Functions as Return Types

// function below returns a function.  That function takes 2 integers and returns an integer
func makeTownGrand() -> (Int, Int) -> Int {
  func buildRoads(lightsToAdd: Int, toCurrentLights: Int) -> Int {
    return toCurrentLights + lightsToAdd
  }
  return buildRoads
}

// call above function

var stopLights = 4
let townPlan = makeTownGrand()
stopLights = townPlan(4, stopLights)
print("KNowwhere has \(stopLights) stopLights")











