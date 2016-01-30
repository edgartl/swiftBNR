//: MARK: Conditionals

import Cocoa

var population: Int = 90000
var message: String
var hasPostOffice:Bool = true

if population < 10000 {
  message = "\(population) is a small town!"
} else {
  message = "\(population) is pretty big!"
}

print(message)

//if !hasPostOffice {
//  print("Where do we buy stamps?")
//}

//ternary operator
//message = population < 10000 ? "\(population) is a small town!" : "\(population) is pretty big!"


if population < 10000 {
  message = "\(population) is a small town!"
} else {
  if population >= 10000 && population < 50000 {
    message = "\(population) is a medium town!"
  } else {
    message = "\(population) is pretty big!"
  }
}

print(message)

if !hasPostOffice {
  print("Where do we buy stamps?")
}


if population < 10000 {
  message = "\(population) is a small town!"
} else if population >= 10000 && population < 50000 {
  message = "\(population) is a medium town!"
} else if population >= 50000 && population < 80000 {
  message = "\(population) is a big town!"
} else {
  message = "\(population) is very big!"
}

print(message)









