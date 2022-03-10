
//Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.
let chars = "Simform"
let firstTwo = chars.prefix(2)
print(firstTwo)

//Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1.
var firstString = "Swift"
var secondString = "Examples"
firstString.removeFirst()
secondString.removeFirst()
print(firstString + secondString)

// Write a Swift program to move the first two characters of a given string to the end. The given string length must be at least 2.
var string = "Swift"
shiftTwoCharsToEnd(moveString: string)
func shiftTwoCharsToEnd(moveString: String) {
    print("Passed String is: \(moveString)")
    if moveString.count < 2 {
        print("Passed String must be of length 2")
        return
    } else {
        let firstTwo = moveString.prefix(2)
        let restChars = moveString.suffix(moveString.count-2)
        print("Generated String is: \(restChars + firstTwo)")
    }
}

//Write a Swift program to test if a given string starts with "Sw".
var myString = "Swift"
isStartingWith(myValue: myString, check: "Sw")

func isStartingWith(myValue: String, check: String) -> Bool {
    print("Passed String is : \(myValue)")
    print("Passed Check String is : \(check)")
    
    let firstChars = myValue.prefix(check.count)
    if firstChars == check {
        print("\(myValue) does start with \"\(check)\".")
        return true
    } else {
        print("\(myValue) does not start with \"\(check)\".")
        return false
    }
}

//Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n.
var string4 = "Simform Solutions"
subStringOfGivenChars(temp: string4, index: 3)

func subStringOfGivenChars(temp: String, index: Int) {
    print("Passed String is : \(temp)")
    print("Passed number to cutout is : \(index)")
    if index > temp.count {
        print("Given Index is greater than the String length")
        return
    } else {
        let firstString = temp.prefix(index)
        let secondString = temp.suffix(index)
        print("Generated String is : \(firstString + secondString)")
    }
}

//Write a Swift program to take one array and find out maximum number from that array
var numbers = [1, 2, 3, 4, 5]
print(numbers.max())

