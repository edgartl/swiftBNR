//: [Previous](@previous)

import Foundation

// silver challenge

func beanSifter(groceryList: [String]) -> (beans: [String], otherGroceries: [String]) {
  
  var results = (beans:[String](), otherGroceries:[String]())
  
  for groceryItem in groceryList {
    
    groceryItem.hasSuffix("bean") ? results.beans.append(groceryItem) : results.otherGroceries.append(groceryItem)
  }
  return results
}

//calls
let result = beanSifter(["black bean","milk", "green bean", "pinto bean", "apples"])
result.beans
result.otherGroceries

//: [Next](@next)
