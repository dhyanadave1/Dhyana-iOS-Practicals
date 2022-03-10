import Foundation
struct student {
    var name = ""
    var age = 0
}
var firstPerson = student()
firstPerson.name = "Dhyana"
firstPerson.age = 20
print("Name is \(firstPerson.name), Age is \(firstPerson.age) ")


//memberwise initializar
struct Person {
var name: String
var age: Int
}
// instance of Person with memberwise initializer
var person1 = Person(name: "Dhyana", age: 20)
print("Name: \(person1.name) and Age: \( person1.age)")

