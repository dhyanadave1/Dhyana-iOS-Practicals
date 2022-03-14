//Create one example of usage of willSet and didSet
import Darwin //It is used here to import mathematical function sqrt
class Circle {
    var radius : Double = 0 {
        willSet {
            print("about to set new value: \(newValue)")
        }
        
        didSet {
            if radius < 0 {
                radius = oldValue
            }
        }
    }
}

let circle = Circle()
circle.radius = -10
print("radius: \(circle.radius)")

//Computed Property
struct LoanCalculator {
    var loanAmount: Int
    var rateOfInterest: Int
    var year: Int
    var simpleInterest: Int {
        get {
            return (loanAmount * rateOfInterest * year) / 100
        }
    }
}
let loanCalculator = LoanCalculator(loanAmount: 500, rateOfInterest: 10, year: 5)
print("Interest amount = \(loanCalculator.simpleInterest) ")

// Create a swift program to demonstrate usage of computed properties using getter and setter
class MyCircle {
    var radius: Double = 0
    var area: Double {
        get {
            return radius * radius * Double.pi
        }
        
        set(areaValue) {
            radius = sqrt(areaValue / Double.pi)
        }
    }
}
var myCircle = MyCircle()
myCircle.radius = 5
debugPrint(myCircle.area)

myCircle.area =  78.53981633974483
debugPrint(myCircle.radius)

//stored properties
class CircleArea {
    var radius: Double = 5
    let pi: Double = 3.14
    func area() {
        print(pi * radius * radius)
    }
}
var myArea = CircleArea()
myArea.area()

//Lazy stored properties
struct Player {
    var name: String
    var team: String

lazy var introduction = {
    return "now entering to the game \(name) from \(team)"
}()
}
var player = Player(name: "Dhyana", team: "WinningCharms")
print(player.introduction)

// Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it
struct NewPlayer {
    fileprivate var name: String
    var team: String

lazy var introduction = {
    return "now entering to the game \(name) from \(team)"
}()
}
var newPlayer = NewPlayer(name: "Dhyana", team: "WinningCharms")
print(newPlayer.introduction)

//Create one structure to show usage of mutating function in swift
struct Person {
    var name: String
    mutating func makeAnonymous() {
        name = "Anonymous"
        print(name)
    }
}
var person = Person(name: "Dhyana")
person.makeAnonymous()

//Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output/ error. (you will learn difference between class and static)
class ParentClass {
    class func classFunction() {
    }
    static func staticFunction() {
    }
    class func classFunctionToBeMakeFinalInImmediateSubclass() {
    }
}

class ChildClass: ParentClass {
    override class func classFunction() {
        
    }
    
    //Compile Error. Class method overrides a 'final' class method
//    override static func staticFunction() {
//    }
}

//Subscript Ex-1
struct Timetable {
    let multiplier: Int
    subscript (index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTables = Timetable(multiplier: 3)
print(threeTimesTables [5])

//Subscript Ex-2
//Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week.

class WeekDays {
    let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    subscript(index: Int) -> String {
        get {
            if index < 8 {
                print(days[index - 1])
                return days[index - 1]
            } else {
                return "Invalid input"
            }
        }
    }

func getDay(at number: Int) -> String {
    return self[number]
    }
}
var weekDays = WeekDays()
weekDays.getDay(at: 1)
