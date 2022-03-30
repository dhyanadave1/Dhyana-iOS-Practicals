protocol CarDelegate {
    var colour: String { get set }
    func drive()
    func isAllWheelDrive() -> Bool
}

class Car {
}

class BMW: Car, CarDelegate {
    var colour: String
    
    init(colour: String) {
        self.colour = colour
    }
    
    func drive() {
    }
    
    func isAllWheelDrive() -> Bool {
        return true
    }
}

//--------------------------------------------------------------------------------------------------------------
protocol Polygon {
  func getArea(length: Int, breadth: Int)
}

class Rectangle: Polygon {
  // implementation of method
  func getArea(length: Int, breadth: Int) {
    print("Area of the rectangle:", length * breadth)
  }
}

// create an object
var rectangle = Rectangle()

rectangle.getArea(length:5, breadth: 6)
