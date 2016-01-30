//: [Previous](@previous)

import Foundation

var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?

// Nil Coalescing operator

//without NC operator
//let description: String
//if let errorDescription = errorDescription {
//  description = errorDescription
//} else {
//  description = "No Error"
//}

//with Nil Coalescing operator
let description = errorDescription ?? "No Error"

//: [Next](@next)
