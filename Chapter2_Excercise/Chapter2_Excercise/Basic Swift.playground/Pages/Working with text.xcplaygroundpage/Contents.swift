
//Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.
let chars = "Simform"
let firstTwoCharacters = chars.prefix(2)
print(firstTwoCharacters)

//Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1.
var firstString = "Swift"
var secondString = "Examples"
firstString.removeFirst()
secondString.removeFirst()
print(firstString + secondString)

// Write a Swift program to move the first two characters of a given string to the end. The given string length must be at least 2.
var string = "Swift"
shiftTwoCharsToEnd(givenString: string)
func shiftTwoCharsToEnd(givenString: String) {
    print("Passed String is: \(givenString)")
    if givenString.count < 2 {
        print("Passed String must be of length 2")
        return
    } else {
        let firstTwo = givenString.prefix(2)
        let restChars = givenString.suffix(givenString.count - 2)
        print("Generated String is: \(restChars + firstTwo)")
    }
}

//Write a Swift program to test if a given string starts with "Sw".
var myString = "Swift"
isStartingWith(myValue: myString, stringForComparison: "Sw")

func isStartingWith(myValue: String, stringForComparison: String) -> Bool {
    print("Passed String is : \(myValue)")
    print("Passed string String is : \(stringForComparison)")
    
    let firstChars = myValue.prefix(stringForComparison.count)
    if firstChars == stringForComparison {
        print("\(myValue) does start with \"\(stringForComparison)\".")
        return true
    } else {
        print("\(myValue) does not start with \"\(stringForComparison)\".")
        return false
    }
}

//Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n.
var mineString = "Simform Solutions"
subStringOfGivenChars(passedString: mineString, index: 3)

func subStringOfGivenChars(passedString: String, index: Int) {
    print("Passed String is : \(passedString)")
    print("Passed number to cutout is : \(index)")
    if index > passedString.count {
        print("Given Index is greater than the String length")
        return
    } else {
        let firstString = passedString.prefix(index)
        let secondString = passedString.suffix(index)
        print("Generated String is : \(firstString + secondString)")
    }
}

//Write a Swift program to take one array and find out maximum number from that array
var numbers = [1, 2, 3, 4, 5]
print(numbers.max())

