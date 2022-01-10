import UIKit

let lottoNumbers = [10,9,8,7,6,5]

// 1:
//for i in lottoNumbers.endIndex - 3 ..< lottoNumbers.endIndex{
//    print(lottoNumbers[i])
//}
//

// 2:
//for i in lottoNumbers.reversed() {
//    print(i)
//}
//

//for i in 0 ..< lottoNumbers.endIndex where i % 2 == 0{
//    print(lottoNumbers[i])
//}

// 3:
//var i = lottoNumbers.count
//while i != 0 {
//    print(lottoNumbers[i - 1])
//    i -= 1
//}

//var j = 0
//while j < lottoNumbers.count  {
//    if j % 2 == 0 {
//        print(lottoNumbers[j])
//        j += 1
//    } else {
//        j += 1
//    }
//}

// 4:
//var i = lottoNumbers.count
//repeat {
//    print(lottoNumbers[i - 1])
//    i -= 1
//}while i != 0
//
//var j = 0
//repeat {
//    if j % 2 == 0{
//        print (lottoNumbers[j])
//        j += 1
//    }else{
//        j += 1
//    }
//}while j < lottoNumbers.count

// 6:
var isRaining = true
if isRaining == true {
    print("It's raining. I don't want to work today.")
}else {
    print("Although it's sunny. I still don't want to work today")
}


//var jobLevel = [1: "Member",
//                2: "Team Leader",
//                3: "Manager",
//                4: "Director"]
//
//jobLevel[4] ?? "We don't have this job"

// 7:
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

