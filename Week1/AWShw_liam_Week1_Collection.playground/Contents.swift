import UIKit

var myFriends:[String] = []

//myFriends.append("Ian")
//myFriends.append("Bomi")
//myFriends.append("Kevin")

myFriends += ["Ian","Bomi","Kevin"]

myFriends.append("Michael")

//myFriends.insert("Michael", at: myFriends.endIndex)
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)

for i in 0..<myFriends.count {
    print(myFriends[i])
}
// 6:
//myFriends[5]

// 7:
myFriends[0]

// 8:
myFriends.last

// 9:
var myCountryNumber:[String:Int] = [:]

//10:
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81
//11:

myCountryNumber["GB"] = 0
print(myCountryNumber)

myCountryNumber["GB"] = nil
print(myCountryNumber)
