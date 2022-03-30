//Automatic reference counting
class Human {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var firstReference: Human?
var secondReference: Human?
var thirdReference: Human?

firstReference = Human(name: "Dhyana")
secondReference = firstReference
thirdReference = firstReference
firstReference = nil
secondReference = nil
thirdReference = nil //now deinitialized

//Weak variable
class Person {
    var name: String
    weak var college: University?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is deinitialized")
    }
}

class University {
    let name: String
    weak var person: Person?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is deinitialized")
    }
}

var personObj: Person?
var universityObj: University?
personObj = Person(name: "Dhyana")
universityObj = University(name: "GTU")
personObj?.college = universityObj
universityObj?.person  = personObj
personObj = nil
universityObj = nil
