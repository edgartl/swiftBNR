//: Playground - Arrays

import Cocoa

//syntax 01
//var bucketList: Array<String>

//syntax 02
//var bucketList: [String]

//syntax 03 - initialized added & array literal syntax
//var bucketList: [String] = ["Climb Mt. Everest"]

//syntax 04 - Type inference
var bucketList = ["Climb Mt. Everest"]
bucketList.append("Fly hot air balloon to Fiji")
bucketList.append("Watch Lord of the Rings trilogy in one day")
bucketList.append("Go on a walkabout")
bucketList.append("Scuba dive in the great blue hole")
bucketList.append("Find a triple rainbow")

bucketList.removeAtIndex(2)
bucketList
print(bucketList.count)
print(bucketList[0...2])
bucketList[2] += " in Australia"
bucketList
bucketList[0] = "Climb Mt. Kilimanjaro"







