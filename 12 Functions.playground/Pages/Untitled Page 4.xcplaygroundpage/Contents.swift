//: [Previous](@previous)

import Foundation

// bronze challenge

//---------------------------------refactor this:

//func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
//  guard let middleName = name.middle else {
//    print("Hey There!")
//    return
//  }
//  print("Hey \(middleName)")
//}

// --------------------------------to use guard - where...


func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
  guard let middleName = name.middle
    
    where name.middle?.characters.count < 4
    
    else {
    print("Hey There!")
    return
  }
  print("Hey \(middleName)")
}

greetByMiddleName(("Tom", "Danger", "Edgar"))
greetByMiddleName(("Tom", "Joe", "Edgar"))

//: [Next](@next)
