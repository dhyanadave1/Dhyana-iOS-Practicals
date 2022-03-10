/*You are given a year, determine if it’s a leap year. A leap year is a year containing an extra day. It has 366 days instead of the normal 365 days. The extra day is added in February, which has 29 days instead of the normal 28 days. Leap years occur every 4 years. 2012 was a leap year and 2016 will also be a leap year.
 The above rule is valid except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not also divisible by 400. For example 1900 was not a leap year, but 2000 was. Print Leap year! or Not a leap year! depending on the case.*/
let year = 2000
if year % 4 == 0 {
    if year % 100 == 0 && year % 400 != 0 {
        print("Not a leap year!")
    } else {
        print("Leap year!")
    }
} else {
    print(year, terminator: "-")
    print("Not a leap year!")
}

/*You have the cost of a meal at a restaurant stored in a variable mealCost of type Double.
You would like to leave a tip of a certain percentage. The percentage is stored in a variable tip of type Int.
Print the total cost of the meal.*/
var bill = 3.5
var tip = (bill * 0.20) + bill
print(tip)

/*You are working on a smart-fridge. The smart-fridge knows how old the eggs and bacon in it are. You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days).
 Given baconAge and eggsAge(in days) determine if you can cook bacon and eggs or what ingredients you need to throw out.
 If you can cook bacon and eggs print you can cook bacon and eggs.
 If you need to throw out any ingredients for each one print a line with the text throw out <ingredient> (where <ingredient> is bacon or eggs) in any order.*/
var baconAge = 3
var eggsAge = 2
if baconAge <= 7 && eggsAge <= 21 {
    print("cook bacon and eggs")
} else if baconAge <= 7 && eggsAge > 21 {
    print("throwout eggs")
} else if baconAge > 7 && eggsAge <= 21 {
    print("throwout bacon")
} else if baconAge > 7 && eggsAge > 21 {
    print("throwout bacon and eggs")
}

//Above average
var grade1 = 7.0
var grade2 = 9.0
var grade3 = 5.0
let yourGrade: Double = 8.0
var average = (yourGrade + grade1 + grade2 + grade3) / 4
if yourGrade > average {
    print("above average")
} else {
    print("below average")
}


//hitpoints
var currentHp : Int = 75
var updateHp : Int = 0
if currentHp != 0 {
    if currentHp <= 20 {
        updateHp = 20
    } else {
        if currentHp % 10 == 0 {
            updateHp = currentHp + 5
        } else {
            updateHp = ((currentHp/10) * 10) + 10
        }
    }
  print(updateHp)
} else {
    print("You are dead")
}

