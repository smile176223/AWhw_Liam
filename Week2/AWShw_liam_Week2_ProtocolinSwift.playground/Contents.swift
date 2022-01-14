///# Protocol in Swift

protocol PoliceMan{
    func arrestCriminals()
}
protocol ToolMan{
    func fixComputer()
}
struct Person : PoliceMan {
    var name : String
    var toolMan : ToolMan

    func arrestCriminals(){
    }
}
struct Engineer : ToolMan{
    func fixComputer(){
    }
}

let Steven = Person(name: "Steven",toolMan: Engineer())
