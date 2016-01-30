//: Playground - noun: a place where people can play

import Cocoa

//var statusCode: Int = 404
//var errorString: String = "The request failed with the error:"

//switch statusCode {
//case 400:
//  errorString = "Bad Request"
//case 401:
//  errorString = "Unauthorized"
//case 403:
//  errorString = "Forbidden"
//case 404:
//  errorString = "Not Found"
//default:
//  errorString = "None"
//}

//commented out for revision below

//switch statusCode {
//case 400, 401, 403, 404:
//  errorString = "There was somethng wrong with the request."
//  fallthrough
//default:
//  errorString += " Please review the request and try again."
//}

// revision

//switch statusCode {
//case 100, 101:
//  errorString += " Informational, 1xx."
//case 204:
//  errorString += " Sucessful but no content, 204."
//case 300...307:
//  errorString += " Redirection, 3xx."
//case 400...417:
//  errorString += " Client error, 4xx."
//case 500...505:
//  errorString += " Server error, 5xx."
//default:
//  errorString += "Unknown. Please review the request and try again."
//}

// revision = Value binding

//switch statusCode {
//case 100, 101:
//  errorString += " Informational, \(statusCode)."
//case 204:
//  errorString += " Sucessful but no content, 204."
//case 300...307:
//  errorString += " Redirection, \(statusCode)."
//case 400...417:
//  errorString += " Client error, \(statusCode)."
//case 500...505:
//  errorString += " Server error, \(statusCode)."
////case let unknownCode: //temporary constant
////  errorString += "\(unknownCode) is not a known error code."
//default:
//  errorString += "\(statusCode) is not a known error code."
//}

// revision = Where clause - a filter

var statusCode: Int = 418
var errorString: String = "The request failed with the error:"

switch statusCode {
case 100, 101:
  errorString += " Informational, \(statusCode)."
case 204:
  errorString += " Successful but no content, 204."
case 300...307:
  errorString += " Redirection, \(statusCode)."
case 400...417:
  errorString += " Client error, \(statusCode)."
case 500...505:
  errorString += " Server error, \(statusCode)."
  
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
  errorString = "\(statusCode) is not a known error code."
  
default:
  errorString = " Unexpected error encountered."
}

// tuples 5.7

let error = (code: statusCode, error: errorString)
error.0
error.code
error.1
error.error

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
  print("No items found.")
case (404, _):
  print("First Item not found.")
case (_,404):
  print("Second Item not found")
default:
  print("All items found.")
}

// if-case 5.12

let age = 25

//if case 18...35 = age {
//  print("In cool demographic and of drinking age")
//}

//revised - if-case with where clause
if case 18...35 = age where age >= 21{
  print("In cool demographic and of drinking age")
}

// challenge

let point = (x: 1, y: 4)

switch point {
case let q1 where (point.x > 0) && (point.y > 0):
  print("\(q1) is in quadrant 1")
case let q2 where (point.x < 0) && point.y > 0:
  print("\(q2) is in quadrant 2")
case let q3 where (point.x < 0) && point.y < 0:
  print("\(q3) is in quadrant 3")
case let q4 where (point.x > 0) && point.y < 0:
  print("\(q4) is in quadrant 4")
case (_, 0):
  print("\(point) sits on the x-axis")
case (0, _):
  print("\(point) sits on the y-axis")
default:
  print("case not covered")
}



















