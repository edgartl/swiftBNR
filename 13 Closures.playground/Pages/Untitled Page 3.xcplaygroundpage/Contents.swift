//: [Previous](@previous)

import Foundation

//Closures capture values

func makeGrowthTracker(forGrowth growth: Int) -> () -> Int {
  var totalGrowth = 0
  func growthTracker() -> Int {
    totalGrowth += growth
    return totalGrowth
  }
  return growthTracker
}

var currentPopulation = 5422
let growBy500 = makeGrowthTracker(forGrowth: 500)

//calls

growBy500()
growBy500()
growBy500()
currentPopulation += growBy500()

//: [Next](@next)
