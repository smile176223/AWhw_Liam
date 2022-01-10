import UIKit

//func greet(person: String) -> String{
//    var message = ""
//    if person == "Luke" {
//        message = "Hello, Luke"
//    }else{
//        message = " :< you are not Luke"
//    }
//    return message
//}

func greet(person: String){
    print ("Hello,\(person)")
}

func multiply(a:Int , b:Int = 10){
    print(a*b)
}

multiply(a: 9)



greet(person: "Liam")

