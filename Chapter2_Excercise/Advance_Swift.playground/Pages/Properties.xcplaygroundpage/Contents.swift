//Swift Properties
class person {
    var name : String = ""
    var age : Int = 0
}

var firstPerson = person()

firstPerson.name = "Dhyana"
firstPerson.age = 20

print(firstPerson.name)
print(firstPerson.age)

//computed property

class Calculator {

  // define two stored properties
  var num1: Int = 0
  var num2: Int = 0

  // define one computed property
  var sum: Int {
    // calculate value
    num1 + num2
  }
}

var obj = Calculator()
obj.num1 = 11
obj.num2 = 12

// read value of computed property
print("Sum:", obj.sum)

