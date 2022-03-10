//Print the powers of 2 that are less than or equal to N.
var initialValue : Int = 100
var temporaryValue = 1
print("Power of 2 is:" )
for _ in 1...initialValue{
    if (temporaryValue * 2 > initialValue) {
        break
    } else {
        temporaryValue = temporaryValue * 2
        print(temporaryValue)
    }
}

//number is prime or not
print("")
func isPrime(_ number: Int) -> Bool {
    return number > 1 && !(2..<number).contains { number % $0 == 0 }
}
var result = isPrime(15)
print(result)

//Given an integer N draw a square of N x N asterisks.
print("")
print("square of N x N asterisks.")
var number : Int = 3
for _ in 1...number {
    for _ in 1...number {
        print("*", terminator: " ")
    }
    print("")
}

//Given an integer N draw a triangle of asterisks. The triangle should have N lines, the i-th line should have i asterisks on it.
print("")
print("triangle of asterisks")
var numberOfLines: Int = 5
for firstLineCount in 1...numberOfLines {
    for _ in 1...firstLineCount{
        print("*", terminator:" ")
    }
    print("")
}

//Given an integer N draw a pyramid of asterisks. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i*2-1 asterisks
print("")
var lineNumber : Int = 6
var temporaryVariable = 0
print("Pyramid")
while temporaryVariable < lineNumber {
    let spaces = String(repeating: " ", count: lineNumber - temporaryVariable - 1)
    let stars = String(repeating: "*", count: 2 * temporaryVariable + 1)
    print(spaces + stars)
    temporaryVariable += 1
}


