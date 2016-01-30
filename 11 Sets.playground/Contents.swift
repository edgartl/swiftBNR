//: Playground - noun: a place where people can play

import Cocoa

//var groceryBag = Set<String>()
//groceryBag.insert("Apples")
//groceryBag.insert("Oranges")
//groceryBag.insert("Pineapple")
//
//for food in groceryBag {
//  print(food)
//}

// no literal syntax yet - workaround to above

//var groceryBag = Set(["Apples", "Oranges", "Pineapple"])
//
//for food in groceryBag {
//  print(food)
//}

// yet another syntax to above

var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]

for food in groceryBag {
  print(food)
}

let hasBananas = groceryBag.contains("Bananas")

// combining sets

let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)

// intersecting sets
let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersect(roommatesGroceryBag)


// Detecting Intersections in sets

let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjointWith(roommatesSecondBag)

//Bronze challenge

let myCities = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"])
let yourCities = Set(["Chicago", "San Francisco", "Jacksonville"])

let compareCities = yourCities.isSubsetOf(myCities)

//Silver challenge -----------------------------------------------------------------------

var toBuy: Set = ["Shoes", "Jacket", "Hat"]

let friendsToBuy = Set(["Gloves", "Fleece"])

//combine

let commonToBuy: Void = toBuy.unionInPlace(friendsToBuy)
toBuy

//intersect

let moreToBuy = Set(["Towels", "Hoodie", "Hat", "Shoes"])

toBuy.intersectInPlace(moreToBuy)














