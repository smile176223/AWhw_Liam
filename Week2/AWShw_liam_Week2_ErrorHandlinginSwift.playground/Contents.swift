import UIKit

///# Error Handling in Swift

enum GuessNumberGameError {
    case wrongNumber
}
class GuessNumerGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
}
        print("Guess the right number: \(targetNumber)")
    }
}
extension GuessNumberGameError:Error{}

var answer = GuessNumerGame()
try answer.guess(number: 20)
