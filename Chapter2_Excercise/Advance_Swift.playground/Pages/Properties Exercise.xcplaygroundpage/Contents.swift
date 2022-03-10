//Create one example of usage of willSet and didSet
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

