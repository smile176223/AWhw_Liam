import UIKit

// Q1:
class Animal {
    enum Gender {
        case male
        case female
        case undefined
    }
    func eat() {
        print("I eat everything")
    }
}
var liam = Animal()
liam.eat()
var liamgender = Animal.Gender.male


// Q2:
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
var horse = Horse()
horse.eat()
