///# Q1:
enum Gender {
    case male
    case female
    case undefined
}
class Animal {
    let Gender :Gender
    init(_ Gender:Gender) {
        self.Gender = Gender
    }
    func eat() {
        print("I eat everything")
    }
}
var liam = Animal(.male)
liam.eat()


///# Q2:
class Elephant : Animal {
    override func eat() {
        print("Elephant eat naturally growing plants and shrubs")
    }
}
class Tiger : Animal{
    override func eat(){
        print("Tiger eat meat meat meat")
    }
}
class Horse : Animal{
    override func eat() {
        print("Horse eat grass and hay or haylage")
    }
}
var horse = Horse(.male)
var tiger = Tiger(.male)
var elephant = Elephant(.male)
horse.eat()
tiger.eat()
elephant.eat()


///# Q3
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}
let zoo = Zoo(weeklyHot: Tiger(.male))
zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse
print(zoo)



///# Q4 What’s the difference between Struct and Class ?
///Struct : value types / values / copy data / immutable / 不可繼承
///Class : reference types / objects / share data / mutable / 可繼承
///Struct的values特性與Class的objects特性，在Struct中值不會被改變，而在Class中值會被改變。
///EX:
class q4class {
   var number = 1
}
var q4Aclass = q4class()
var q4Bclass = q4Aclass
q4Bclass.number = 2
print("q4Aclass:\(q4Aclass.number),q4Bclass:\(q4Bclass.number)")

struct q4struct{
    var number = 1
}
var q4Astruct = q4struct()
var q4Bstruct = q4Astruct
q4Bstruct.number = 2
print("q4Astruct:\(q4Astruct.number),q4Bstruct:\(q4Bstruct.number)")


///# Q5 What’s the difference between instance method and type method ?
///instance method 實體方法：先需要生成一個特定型別（類別、結構、列舉）的實體，才能使用這個實體裡的方法。
///type method 型別方法：屬於特定型別（類別、結構、列舉）本身的方法。
///EX:
class Q5 {
    func anwserInstance(){}
    static func answerType(){}
}
var q5User = Q5()
q5User.anwserInstance()
Q5.answerType()


///# Q6 What does Initilizer do in class and struct ?
///Initilizer 初始化，在Class、Struct、Enum中主要是負責為該實例上的每個儲存屬性設置一個初始值，並且在新實例準備好使用之前執行所需的任何其他設置或是初始化。
///EX:
class Q6 {
    var q6Anwser : String
    init(q6Anwser: String){
        self.q6Anwser = q6Anwser
    }
}

///# Q7 What does self mean in an instance method and a type method ?
/// 在實例方法中使用self這個屬性可以用來代表實例本身，一般來說在方法中會預設為當前的實例或是方法，但在實例方法中的某個參數名稱與實例方法中的某個屬性名稱相同的時候，
///參數名稱會有優先權，這時候就可以使用self來區分兩者。
///在型別方法中，self則代表型別本身，而不是型別中的某個實例，而在型別方法中也可以使用類似實例方法中的用法來區分屬性的差異。
///EX:
class Q7{
    var count = 0
    func q7Counter() {
        count += 1
    }
    func q7Counter(by count: Int){
        self.count += 1
    }
    func q7Bigger1(by count: Int) -> Bool{
        count > count
    }
    func q7Bigger2(by count: Int) -> Bool{
        count > self.count
    }
}
var q7 = Q7()
q7.q7Bigger1(by: 3)
q7.q7Bigger2(by: 3)


///# Q8 What’s the difference between reference type and value type ?
/// reference type：共享同一份資料，value type：從原本的資料複製產生新的資料
///struct、enum、tuple：value type
///class、function、closure：reference type
///Q4的範例也是同時解釋了Q8的reference type與value type的差異。
