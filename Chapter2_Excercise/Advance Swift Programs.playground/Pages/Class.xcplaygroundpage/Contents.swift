
class StudentMarks {
   var mark = 700
   var name = "Dhyana"
}
let studentMarks = StudentMarks()
print("Mark is \(studentMarks.mark)")
print("name is \(studentMarks.name)")

//Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.
class Bicycle {
    var name = ""
    var gears = 0
}
// create instance of Person
var bicycle = Bicycle()
// access variables and assigned new values
bicycle.gears = 11
bicycle.name = "Mountain Bike"
print("Name: \(bicycle.name), Gears: \(bicycle.gears) ")


//Create a swift program to demonstrate usage of swift class for usage of squareiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.
class Person {
    var name: String
    var department: String?
    var college: String?
    
    init(name: String, department: String) {
        self.name = "Dhyana"
        self.department = "CE"
        self.college = nil
    }
    
    init(name: String, college: String) {
        self.name = "Dhyana"
        self.college = "B.H.Gardi"
        self.department = nil
    }
}
var studDetails = Person(name: "Dhyana", college: "B.H.Gardi")
print(studDetails.name, studDetails.college)

var studDetail = Person(name: "Dhyana", department: "CE")
print(studDetail.name, studDetail.department)

// Create a swift class which is having code to return square of given number and access this code using class instance.
    class SquareOfNumber {
        func squareOfNumber(firstNum: Int) -> Int {
            print(firstNum * firstNum)
            return firstNum * firstNum
        }
    }
    var square = SquareOfNumber()
    square.squareOfNumber(no1: 23)
    
   
//Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.
class Animal {
  var name: String = ""
  func eat() {
    print("I can eat")
  }
}
// inherit from Animal
class Dog: Animal {
  func display() {
    print("My name is ",name);
  }
}
// create an object of the subclass
var dog = Dog()
// access superclass property and method
dog.name = "Stuffy"
dog.eat()
// call subclass method
dog.display()

class Cat: Animal {
  func display() {
    print("My name is ",name);
  }
}
// create an object of the subclass
var cat = Cat()
// access superclass property and method
cat.name = "Switee"
cat.eat()
// call subclass method
cat.display()

//Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.

class Colour {
    func getFavColour() {
        print("My favourite colour is pink")
    }
}

class MyFavColour : Colour {
    override func getFavColour() {
        print("I love Pink")
    }
}
var colour = MyFavColour()
colour.getFavColour()

//Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some different property which is not common.
class Vehicles {
    var name: String = ""
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
}

class Bike: Vehicles {
    func display() {
      print("My name is ",name);
    }
}
var bike = Bike()
bike.name = "Activa"
bike.display()

class OnePerson {
    var name = "Joe"
    func greet() {
        print("Hello Joe")
    }
}
var person = OnePerson()
person.greet()

//Structure vs class
class SomeClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}
var someClass = SomeClass(name: "Dhyana")
var secondClass = someClass // both classes are now reference the same instance!
secondClass.name = "Sue"
print(someClass.name)
print(secondClass.name)

struct SomeStruct {
    var name: String
    init(name: String) {
        self.name = name
    }
}
var firstStruct = SomeStruct(name: "Dhyana")
var secondStruct = firstStruct // aStruct and bStruct are two structs with the same value!
secondStruct.name = "Sue"
print(firstStruct.name)
print(secondStruct.name)
