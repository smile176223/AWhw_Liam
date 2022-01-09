import UIKit

let lottoBumbers = [10,9,8,7,6,5]

//for i in lottoBumbers.endIndex - 3 ..< lottoBumbers.endIndex{
//    print(lottoBumbers[i])
//}
//

//for i in lottoBumbers.reversed() {
//    print(i)
//}
//

//for i in 0 ..< lottoBumbers.endIndex where i % 2 == 0{
//    print(lottoBumbers[i])
//}


//var i = lottoBumbers.count
//while i != 0 {
//    print(lottoBumbers[i - 1])
//    i -= 1
//}
//
//var j = 0
//while j < lottoBumbers.count  {
//    if j % 2 == 0 {
//        print(lottoBumbers[j])
//        j += 1
//    } else {
//        j += 1
//    }
//}

//
//var i = lottoBumbers.count
//repeat {
//    print(lottoBumbers[i - 1])
//    i -= 1
//}while i != 0
//
//var j = 0
//repeat {
//    if j % 2 == 0{
//        print (lottoBumbers[j])
//        j += 1
//    }else{
//        j += 1
//    }
//}while j < lottoBumbers.count

//let isRaining = ["raining": "It's raining. I don't want to work today."
//                 ,"sunny":  "Although it's sunny. I still don't want to work today"]

let isRaining = ["raining","sunny"]
for weather in isRaining {
    if weather == "raining" {
        print("It's raining. I don't want to work today.")
    }else {
        print("Although it's sunny. I still don't want to work today.")
    }
}

//var jobLevel = [1: "Member",
//                2: "Team Leader",
//                3: "Manager",
//                4: "Director"]
//
//jobLevel[4] ?? "We don't have this job"

var jobLevel = 5
switch jobLevel{
case 1 :
    print("Member")
case 2 :
    print("Team Leader")
case 3 :
    print("Manager")
case 4 :
    print("Director")
default :
    print("We don't have this job")
}

