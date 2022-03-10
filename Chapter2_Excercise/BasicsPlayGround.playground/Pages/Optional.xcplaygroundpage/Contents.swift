//Create an example of demonstrating How to declare optionals in swift?
import Darwin
var perhapsInt: Int?

//force unwrapping
var myString : String?
myString = "Hello, Swift 4!"
print(myString!)
if myString != nil {
    print(myString!)
} else {
   print("myString has nil value")
}

var optionalNumber: Int?
optionalNumber = 25

//IF LET
if let number = optionalNumber {
    print("i have value \(number)")
} else {
    print("i don't have value, i am nill")
}

//GUARD LET
func tripleNumber(number: Int?) {
    guard let number = number else {
        print("Exiting function")
        return
    }
    print("my triple number is \(number * 3)")
}
tripleNumber(number: 5)

//FORCE UNWRAPPING
let forceNumber = optionalNumber!


//Nil coalescing operator
var optionalValue: String?
optionalValue = nil
print(optionalValue ?? "no value")

optionalValue = "Dhyana"
print(optionalValue!)


