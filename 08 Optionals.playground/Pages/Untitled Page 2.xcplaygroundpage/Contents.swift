//: [Previous](@previous)

import Foundation

// Optional Chaining

var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?

if let theError = errorCodeString, errorCodeInteger = Int(theError) where errorCodeInteger == 404 {
  errorDescription = ("\(errorCodeInteger + 200): The requested resource was not found.")
}
var upCaseErrorDescription = errorDescription?.uppercaseString
errorDescription

// modify optional in place

upCaseErrorDescription?.appendContentsOf(" PLEASE TRY AGAIN.")
upCaseErrorDescription

