import UIKit

//write a swift program to demonstrate String type enum
enum IndianSeason{
    case seasonInIndia(String, String, String)
}
var seasons = IndianSeason.seasonInIndia("Winter", "Summer","Monsoon")
print(seasons)

//write a swift program to demonstrate Int type enum
enum Barcode {
    case upc(Int, Int, Int, Int)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
print(productBarcode)

//Write a swift program for enum with raw values.
enum numbers : Int {
    case firstNum = 10
    case secondNum = 12
    case thirdNum = 14
}
var numValue = numbers.firstNum.rawValue
print(numValue)

//Create an enum with its rawValues of type String and show usage of case to print value of case.
enum colours : String {
    case firstColour = "Pink"
    case secondColour = "Brown"
    case thirdColour = "Black"
}
var colourValue = colours.firstColour.rawValue
print(colourValue)

//Write a swift program using enumerations for learn and demonsrate enum cases with parameters (Enum with associated values)
enum Marks {
case gpa(Double, Double, Double)
case grade(String, String, String)
}
//pass three Double values to gpa and string val to grade
var marks1 = Marks.gpa(3.6, 2.9, 3.8)
print(marks1)
var marks2 = Marks.grade("A", "B", "C")
print(marks2)

//Create one enumeration program to return number of days in a month
/*enum Months : Int {
    case January, March, May, July, August, October, December = 31
    case February = 28
    case April, June, September = 30
} */

enum Months {
    case Jan
    case Feb
    case March
    case Apr
    case May
    case June
    case July
    case Aug
    case Sept
    case Oct
    case nov
    case Dec

}
var monthDay = Months.Jan
monthDay = .Jan
switch monthDay {
    case .Jan:
      print(31)
    case .Feb:
      print(28)
    case .March:
      print(31)
    case .Apr:
        print(30)
    case .May:
        print(31)
    case .June:
        print(30)
    case .July:
        print(31)
    case .Aug:
        print(31)
    case .Sept:
        print(30)
    case .Oct:
        print(31)
    case .nov:
        print(30)
    case .Dec:
        print(31)
}


enum Color: CaseIterable {
    case red, green, blue
    
}
for color in Color.allCases {
    print("My favorite color is \(color).")
}
