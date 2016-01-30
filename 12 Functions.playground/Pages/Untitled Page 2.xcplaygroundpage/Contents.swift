//: [Previous](@previous)

import Foundation

// function with default parameter values
func divisionDescription(forNumerator num: Double, andDenominator den: Double, withPunctuation punctuation: String = ".") {
  print("\(num) divided by \(den) equals \(num / den)\(punctuation)")
}

divisionDescription(forNumerator: 9.0, andDenominator: 3.0)
divisionDescription(forNumerator: 9.0, andDenominator: 3.0, withPunctuation: "!")

// in-out parameters

var error = "The request failed:"
func appendErrorCode(code: Int, inout toErrorString errorString: String) {
  if code == 400 {
    errorString += " bad request."
  }
}
appendErrorCode(400, toErrorString: &error)
error



//: [Next](@next)
