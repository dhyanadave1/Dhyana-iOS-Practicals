//Add a character in a string at 5th position
var myString = "DhyanaDave"
myString.insert("(", at: myString.index(myString.startIndex, offsetBy: 5))
print(myString)

//replace character
var myStr = "Dhyana"
let newString = myStr.replacingOccurrences(of: "h", with: "y")
print(newString)

//Add a character in a string at 5th position using Extension
extension String {
    mutating func addCharAt5thPosition(char : Character) {
        let characterIndex = self.index(self.startIndex, offsetBy: 4)
        if self.count >= 5 {
            self.insert(char, at: characterIndex)
        }
    }
}
var string = "Dhyana Dave"
print("String before adding char, \(string)")

string.addCharAt5thPosition(char: "H")
print(string)

//Replace Character using Extension
extension String {
    mutating func replaceCharWithOther(from replacingChar: Character, to newChar: Character) {
        if self.contains(replacingChar) {
            self = String(self.map { $0 == replacingChar ? newChar :$0 })
        }
    }
}
var myFirstString = "Simform"
print("String before replacing char, \(myFirstString)")

myFirstString.replaceCharWithOther(from: "m", to: "n")
print("String after replacing char, \(myFirstString)")

//Remove White Spaces
extension String {
    mutating func removeWhiteSpaces() {
        self = self.filter( { $0 != " "})
    }
}
var mySecondString = "Dhyana Dave "
mySecondString.removeWhiteSpaces()
print(mySecondString)

