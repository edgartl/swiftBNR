//: Playground - noun: a place where people can play

import Cocoa

var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(movieRatings.count) movies.")
let darkoRating = movieRatings["Donnie Darko"]

//modify

movieRatings["Dark City"] = 5
movieRatings

//modify - more safely (& can retrieve old value)

let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, currentRating = movieRatings["Donnie Darko"] {
  print("Old Rating: \(lastRating); Current Rating: \(currentRating)")
}

// adding
movieRatings["The Cabinet of Dr. Caligari"] = 5

//removing
movieRatings.removeValueForKey("Dark City")
//movieRatings["Dark City"] = nil - alternative approach


//looping - all
for (key, value) in movieRatings {
  print("The movie \(key) was rated \(value).")
}

// looping - just keys
for movie in movieRatings.keys {
  print("User has rated \(movie)")
}

//immutable

let album = ["Diet Roast Beef": 268, "Dubba Dubs Stubs His Toe": 467, "Smokey's Carpet Cleaning Service": 187, "Track 4": 221]

//translate dictionary to array

let watchedMovies = Array(movieRatings.keys)

//Silver challenge

let dentonZips = [75243, 75229, 76546, 78989, 78896]
let collinZips = [75099, 75033, 75042, 75012, 75097]
let dallasZips = [76098, 76343, 76001, 76343, 76341]

let texasZipsByCounty = ["denton": dentonZips, "collin": collinZips, "dallas": dallasZips]

print("Texas has the following zip codes: [ \(texasZipsByCounty.values)")







