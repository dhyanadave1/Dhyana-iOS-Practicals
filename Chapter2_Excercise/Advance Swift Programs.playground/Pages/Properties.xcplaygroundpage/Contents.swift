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
  var firstNum: Int = 0
  var secondNum: Int = 0
  // define one computed property
  var sum: Int {
    // calculate value
    firstNum + secondNum
  }
}

var obj = Calculator()
obj.firstNum = 11
obj.secondNum = 12
// read value of computed property
print("Sum:", obj.sum)
