// closures / Lambda

/*var myFunction: ((Int) -> Bool) = number in
{
    if number > 3 {
        return true
    }
    return false
}
let result = myFunction(4)

func isGreaterThanThree(number : Int) -> Bool {
    if number > 3 {
        return true
    }
    return false
}
isGreaterThanThree(number : 4) */

var greet = {
  print("Hello, World!")
}
greet()


let greetUser = {
    (name: String)  in
    print("Hey, \(name).")
}
greetUser("Dhyana")


//Closure That Returns Value
var findSquare = {
    (num : Int) -> (Int) in
    let square = num * num
    return square
}

var result = findSquare(3)
print(result)


//Closure as function parameter
func grabLunch(search: () -> ()) {
    print("Let's go for Exam")
    search()
}
// pass closure as a parameter
grabLunch(search: {
   print("School: 1 mile away")
})


//Trailing Closure
func grabLunch(message: String, search: ()->()) {
   print(message)
   search()
}
grabLunch(message:"Let's go out for lunch")  {
  print("Alfredo's Pizza: 2 miles away")
}

//Autoclosure
func display(greet: @autoclosure () -> ()) {
 greet()
}
// pass closure without {}
display(greet: print("Hello World!"))


//variadic function

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    print(total / Double(numbers.count))
    return total / Double(numbers.count)
}
arithmeticMean(1,2,3,4,5)

