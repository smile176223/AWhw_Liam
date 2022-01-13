import UIKit

///# Q1:
enum Gender {
    case male
    case female
    case undefined
}
class Animal {
    var Gender : Gender
    func eat() {
        print("I eat everything")
    }
    init(Gender :Gender){
        self.Gender = Gender
    }
}
var liam = Animal(Gender: .male)
liam.eat()


///# Q2:
class Elephant : Animal {
    override func eat() {
        print("I eat naturally growing plants and shrubs")
    }
}
class Tiger : Animal{
    override func eat(){
        print("I eat meat meat meat")
    }
}
class Horse : Animal{
    override func eat() {
        print("I eat grass and hay or haylage")
    }
}
var horse = Horse(Gender: .male)
horse.eat()
