//: [Previous](@previous)

import Foundation

// function with return values
func divisionDescription(forNumerator num: Double, andDenominator den: Double, withPunctuation punctuation: String = ".") -> String{
  return "\(num) divided by \(den) equals \(num / den)\(punctuation)"
}

print(divisionDescription(forNumerator: 9.0, andDenominator: 3.0, withPunctuation: "!"))

// nested functions

func areaOfTriangle(withBase base: Double, andHeight height: Double) -> Double {
  
  let numerator = base * height
  func divide() -> Double {
    return numerator / 2
  }
  return divide()
}

areaOfTriangle(withBase: 3.0, andHeight: 5.0)

// multiple returns - tuples

func sortEvenOdd(numbers: [Int]) -> (evens: [Int], odds: [Int]) {
  var evens = [Int]()
  var odds = [Int]()
  for number in numbers {
    if number % 2 == 0 {
      evens.append(number)
    } else {
      odds.append(number)
    }
  }
  return (evens, odds)
}

//calls
let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111]
let theSortedNumbers = sortEvenOdd(aBunchOfNumbers)

print("The even numbers are: \(theSortedNumbers.evens)")
print("The odd numbers are: \(theSortedNumbers.odds)")


// optional returns

func grabMiddleName(name: (String, String?, String)) -> String? {
  return name.1
}

let middleName = grabMiddleName(("Thomas", "Lloyd", "Edgar"))
if let theName = middleName {
  print("Name: \(theName)")
}

//exiting early - GUARD

func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
  guard let middleName = name.middle else {
    print("Hey There!")
    return
  }
  print("Hey \(middleName)")
}

greetByMiddleName(("Tom", "Danger", "Edgar"))
greetByMiddleName(("Tom", nil, "Edgar"))

//assign function type to a constant
let evenOddFunction: ([Int]) -> ([Int], [Int]) = sortEvenOdd

//then use that constant to call the function

evenOddFunction([1,2,3,4,5])


//: [Next](@next)







