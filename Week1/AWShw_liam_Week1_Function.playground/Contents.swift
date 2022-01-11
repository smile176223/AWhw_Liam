import UIKit


func greet(person name: String){
    print ("Hello,\(name)")
}

func multiply(a:Int , b:Int = 10){
    print(a*b)
}

multiply(a: 9)


greet(person: "Luke")
