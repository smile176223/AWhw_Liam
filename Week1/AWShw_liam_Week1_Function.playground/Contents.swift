import UIKit


func greet(name person: String){
    print ("Hello,\(person)")
}

func multiply(a:Int , b:Int = 10){
    print(a*b)
}

multiply(a: 9)


greet(name: "Luke")
