//enum
enum Season {
  case spring, summer, autumn, winter
}
// create enum variable
var currentSeason: Season
currentSeason = Season.summer
print("Current Season:", currentSeason)

//enum with switch statement

enum pizzaSize {
    case small, medium, large
}

var size = pizzaSize.medium

    switch(size) {
      case .small:
        print("I ordered a small size pizza.")

      case .medium:
        print("I ordered a medium size pizza.")

       case .large:
         print("I ordered a large size pizza.");
    }

//caseIterable
enum season: CaseIterable {
    case summer, winter, monsoon
}

for currentSeason in season.allCases {
    print(currentSeason)
}

//rowvalue
enum numbers : Int {
    case firstNum = 10
    case secondNum = 12
    case thirdNum = 14
}

var numValue = numbers.firstNum.rawValue
print(numValue)

//Associate Multiple Values
enum Marks {
case gpa(Double, Double, Double)
case grade(String, String, String)
}

//pass three Double values to gpa and string val to grade
var marks1 = Marks.gpa(3.6, 2.9, 3.8)
print(marks1)
var marks2 = Marks.grade("A", "B", "C")
print(marks2)


