//: Numbers

import Cocoa

print("The maximum Int value is \(Int.max).")
print("The minumum Int value is \(Int.min).")

print("The maximum value for a 32-bit Int value is \(Int32.max).")
print("The minumum value for a 32-bit Int is \(Int32.min).")

//Also available is Int8, Int16, and Int64

//-----------------------

let numberOfPages: Int = 10 //Explicit declaration of Int type
let numberOfChapters = 3 // Implicit - inferred Int type by compiler

let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

//arithmatic

print(10 + 20)
print(30 - 5)
print(5 * 6)

//order of operations
print(10 + 2 * 5) //20 because 2 * 5 is evaluated first
print(30-5-5) // 20 because 30 - 5 is evaulated first

//note  - parenthessis are your friends
print((10 + 2) * 5) //60, because (10 + 2) is evaluated first
print(30 - (5-5)) //30, because (5 - 5) is evaluated first

print(11 / 3) // - swift truncates to int

//-----remainders

print(11 % 3)
print(-11 % 3)

//-----increment / decrement

var x = 10
x++
print("X has been incremented to \(x)")
x--
print("X has been decremented to \(x)")

x += 10 //same as x = x + 10
print("X has had 10 added to it and is now \(x)")

//-----overflow

let y:Int8 = 120
//let z = y + 10 - would result in 130 - too big for Int8

let z = y &+ 10
print("120 &+ 10 is \(z)")


//-----Converting types

let a: Int16 = 200
let b: Int8 = 50
//let c = a + b // type mismatch

let c = a + Int16(b)

//-----floating points

let d1 = 1.1
let d2: Double = 1.1
let f1: Float = 100.3

print(10.0 + 11.4)
print(11.0 / 3.0)
print(12.4 % 5.0)

if d1 == d2 {
  print("d1 and d2 are the same!")
}

print("d1 + 0.1 is \(d1 + 0.1)")

if d1 + 0.1 == 1.2 {
  print("d1 + 0.1 is equal to 1.2")
}





















