//: Playground - noun: a place where people can play

import Cocoa

var errorCodeString: String?
errorCodeString = "404"

//manual verison of optional binding
//if errorCodeString != nil {
//  let theError = errorCodeString!
//  print(theError)
//}

// optional binding
if let theError = errorCodeString {
  print(theError)
}

// nested optional binding

if let theError = errorCodeString {
  if let errorCodeInteger = Int(theError) {
    print("\(theError): \(errorCodeInteger)")
  }
}

// unwrapping multiple optionals - avoids nesting

if let theError = errorCodeString, errorCodeInteger = Int(theError) {
  print("\(theError): \(errorCodeInteger)")
}

// Optional binding and Where clause

if let theError = errorCodeString, errorCodeInteger = Int(theError)
  where errorCodeInteger == 404 {
    print("\(theError): \(errorCodeInteger)")
}



















