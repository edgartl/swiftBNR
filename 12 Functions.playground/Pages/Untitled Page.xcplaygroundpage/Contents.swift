//: Playground - noun: a place where people can play

import Cocoa


//f unction
func printGreeting() {
  print("Hello Playground.")
}

printGreeting()

// function with parameter
func printPersonalGreeting(name: String) {
  print("Hello \(name), welcome to your playground.")
}

printPersonalGreeting("Tom")

// function with multiple parameters
//func divisionDescription(num: Double, den: Double) {
//  print("\(num) divided by \(den) equals \(num/den)")
//}
//
//divisionDescription(9.0, den: 3.0)

// function with multiple parameters & external names
func divisionDescription(forNumerator num: Double, andDenominator den: Double) {
  print("\(num) divided by \(den) equals \(num / den)")
}

divisionDescription(forNumerator: 9.0, andDenominator: 3.0)

// variadic parameters
func printPersonalGreetings(names: String...) {
  for name in names {
    print("Hello \(name), welcome to the playground.")
  }
}

printPersonalGreetings("Alex", "Chris", "Betty", "Drew")



