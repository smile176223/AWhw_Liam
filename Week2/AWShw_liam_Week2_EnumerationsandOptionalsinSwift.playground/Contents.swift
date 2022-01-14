import CoreGraphics
///# Enumerations and Optionals in Swift
///
///# Q1 :
enum Gasoline: String{
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    
    func getPrice() -> Double {
        switch self{
        case .oil92:
            return 28.6
        case .oil95:
            return 30.1
        case .oil98:
            return 32.1
        }
    }
}

let oil92 = Gasoline.oil92
oil92.getPrice()
Gasoline.oil92.rawValue
/// Please explain what enum associated value is and how it works.
/// associated value讓enum具有儲存相關聯資料的功能。
/// 在宣告case時給予associated value的屬性。
/// EX:
enum GasolineVer2{
    case oil(Int)
    
    func getPrice(){
        switch self{
        case .oil(92):
            print("oil92 $28.6")
        case .oil(95):
            print("oil92 $30.1")
        case .oil(98):
            print("oil92 $32.1")
        default:
            print("NO Price!")
        }
    }
}
let oil = GasolineVer2.oil(50)
oil.getPrice()


///# Q2 :
class Pet{
    var name: String
    init(name: String){
        self.name = name
    }
}
class People{
    var pet: String?
    
    func havePet(){
        guard let pet = self.pet else{
            print("Oops! No Pet!")
            return
        }
        print(pet)
    }
    func havePetIF(){
        if self.pet != nil {
            print(pet!)
        }else{
            print("Oops! No Pet!")
        }
    }
}

let Liam = People()
Liam.pet
let Tina = People()
Tina.pet = "cat"
Tina.pet

Liam.havePet()
Liam.havePetIF()
Tina.havePet()
Tina.havePetIF()
