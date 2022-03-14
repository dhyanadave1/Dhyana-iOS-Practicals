struct Student {
    var name = ""
    var age = 0
}
var firstPerson = Student()
firstPerson.name = "Dhyana"
firstPerson.age = 20
print("Name is \(firstPerson.name), Age is \(firstPerson.age) ")

//memberwise initializar
struct Person {
    var name: String
    var age: Int
}
//instance of Person with memberwise initializer
var secondPerson = Person(name: "Dhyana", age: 20)
print("Name: \(secondPerson.name) and Age: \( secondPerson.age)")

//Create a structure example which demonstrates use of initializer in structures.
struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var tempInFerenhit = Fahrenheit()
print("The default temperature is \(tempInFerenhit.temperature)° Fahrenheit")

//Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters
struct MyStruct {
    let myString : String?
    let myDouble : Double?
    let myInt : Int?
}

var structureWithParameters = MyStruct(myString: "Dhyana", myDouble: 10.5, myInt: 10)
print(structureWithParameters)

struct MineStruct {
    let mineStr : String?
    let mineDouble : Double?
    
    init(mineStr : String? = "Dhyana" ,
         mineDouble : Double? = 10.5) {
        self.mineStr = mineStr
        self.mineDouble = mineDouble
    }
}
var structureWithoutParameters = MineStruct()
print(structureWithoutParameters)

class SomeClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}

/*Create one structure which have initializer which takes array of int as input returns two arrays one of all even numbers and another is all odd numbers.
Input: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12]
Output: even numbers are: [6, 8, 10, 8, 12]
        Odd numbers are: [1, 3, 5, 9, 7] */

struct OddOrEven {
    var numbers: [Int]
    init(number: [Int]) {
        self.numbers = number
    }
    
    func differentiate() -> (odd: [Int], even:[Int]) {
        var oddArray: [Int] = []
        var evenArray: [Int] = []
        for value in numbers {
            if value % 2 == 0 {
                evenArray.append(value)
            } else {
                oddArray.append(value)
            }
        }
        return (odd: oddArray, even: evenArray)
    }
}
let oddOrEven = OddOrEven(number: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12])
print("Even numbers : \(oddOrEven.differentiate().even)")
print("Odd numbers : \(oddOrEven.differentiate().odd)")
print("")
