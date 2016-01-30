//: Playground - noun: a place where people can play

import Cocoa

let playground = "Hello Playground"
var mutablePlayground = "Hello, mutable playground"
mutablePlayground += " ! "

for c: Character in mutablePlayground.characters {
  print("\(c)")
}

let oneCoolDude = "\u{1F60E}"
let aAcute = "\u{0061}\u{0301}"

for scalar in playground.unicodeScalars {
  print("\(scalar.value) ")
}

let aAcutePrecomposed = "\u{00E1}"

let b = (aAcute == aAcutePrecomposed)

// find the 5th character

let fromStart = playground.startIndex
let toPosition = 4 //first is zero
let end = fromStart.advancedBy(toPosition)
let fifthCharacter = playground[end]

// pulling a range

let range = fromStart...end
let firstFive = playground[range]