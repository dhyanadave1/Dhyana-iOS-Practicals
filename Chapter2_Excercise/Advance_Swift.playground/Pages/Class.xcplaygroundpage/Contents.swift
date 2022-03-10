class studentMarks {
   var mark = 300
   var name = "Dhyana"
}
let studentdetail = studentMarks()
print("Mark is \(studentdetail.mark)")
print("name is \(studentdetail.name)")

//Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.// define a class
class Bicycle {
    var name = ""
    var gears = 0
}
// create instance of Person
var bike1 = Bicycle()
// access variables and assigned new values
bike1.gears = 11
bike1.name = "Mountain Bike"
print("Name: \(bike1.name), Gears: \( bike1.gears) ")


//Create a swift program to demonstrate usage of swift class for usage of squareiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.

/* class student{
    var name: String
    var department: String
    var college: String
    init() {
        name = "Dhyana"
        department = "CE"
    }
    
    init() {
        name = "Dhyana"
        college = B.H.Gardi
    }
}
let studentDetail = student() */

class Person {
    var name: String
    var department: String?
    var college: String?
    
    init (name: String, department: String) {
        self.name = "Dhyana"
        self.department = "CE"
        self.college = nil
    }
    
    init (name: String, college: String) {
        self.name = "Dhyana"
        self.college = "B.H.Gardi"
        self.department = nil
    }
}

var studDetails = Person(name: "Dhyana", college: "B.H.Gardi")
print(studDetails.name, studDetails.college)

var studDetail = Person(name: "Dhyana", department: "CE")
print(studDetail.name, studDetail.department)

/* class SquareOfNumber {
    var findSquare = {(num : Int) -> (Int) in
        var square = num * num
        return square
    }*/

// Create a swift class which is having code to return square of given number and access this code using class instance.
    class SquareOfNumber {
        func squareOfNumber(no1: Int) -> Int {
            print(no1 * no1)
            return no1 * no1
        }
    }

    var square = SquareOfNumber()
    square.squareOfNumber(no1: 23)
    
   
