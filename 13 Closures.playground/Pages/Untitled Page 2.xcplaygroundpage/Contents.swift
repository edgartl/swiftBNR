//: [Previous](@previous)

import Foundation

//functions as arguments

func makeTownGrand(budget: Int, condition: Int -> Bool) -> ((Int, Int) -> Int)? {
  
  if condition(budget) {
    func buildRoads(lightsToAdd: Int, toCurrentLights: Int) -> Int {
      return toCurrentLights + lightsToAdd
    }
    return buildRoads
  } else {
    return nil
  }
}

func evaluateBudget(budget: Int) -> Bool {
  return budget > 10000
}

var stopLights = 4

if let townPlan = makeTownGrand(10500, condition: evaluateBudget) {
  stopLights = townPlan(4, stopLights)
}



//: [Next](@next)
