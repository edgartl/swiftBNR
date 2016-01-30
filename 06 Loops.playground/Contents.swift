//: Playground - noun: a place where people can play

import Cocoa

var myFirstInt: Int = 0

for i in 1...5 {
  ++myFirstInt
  print("myFirstInt equals \(myFirstInt) at interation \(i)")
}

// case added

for case let i in 1...100 where i % 3 == 0 {
  print(i)
}

//classic for loop
myFirstInt = 0
for var i = 1; i < 6; i++ {
  ++myFirstInt
  print(myFirstInt)
}

// while loop

myFirstInt = 0
var i = 1
while i < 6 {
  ++myFirstInt
  print(myFirstInt)
  ++i
}

// control statements redux

var shields = 5
var blasterOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0

while shields > 0 {
  
  if spaceDemonsDestroyed == 500 {
    print("You beat the game!")
    break
  }
  
  if blasterOverheating {
    print("Blasters are overheated!  Cooldown initiated.")
    sleep(5)
    print("Blasters are ready to fire")
    sleep(1)
    blasterOverheating = false
    blasterFireCount = 0

  }
  
  if blasterFireCount > 100 {
    blasterOverheating = true
    continue
  }
  //Fire blasters!
  print("Fire Blasters!")
  ++blasterFireCount
  ++spaceDemonsDestroyed
}



















