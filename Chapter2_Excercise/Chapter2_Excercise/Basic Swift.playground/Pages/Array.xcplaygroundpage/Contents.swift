
//Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
func checkFirstIsLast (_ myArray: [Int]) -> Bool {
    guard myArray.count > 0 else {
        return false
    }
    if myArray.first == myArray.last {
        return true
    } else {
        return false
    }
}
print(checkFirstIsLast([1, 2, 3, 1]))

//Create a new array with double the length of a given array of integers and its last element is the same as the given arrayprint(check_first_last([1, 2, 3, 1]))

    var myArray = [1,2,3,1]
    var arrayLength = myArray.count
    var lastElement: Int = myArray[arrayLength - 1]
    var newArray: [Int] = []
    if myArray.isEmpty {
        print("Array is empty")
    } else {
        print("Array is")
        for _ in 0...(arrayLength * 2)-1 {
            newArray.append(0);
        }
        newArray[newArray.count - 1] = lastElement
        print(newArray)
    }

// Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array
func firstTwoElementOfArray(_ element: [Int]) -> [Int] {
    guard element.count > 1 else {
        return element
    }
    return Array(element.prefix(2))
}
print(firstTwoElementOfArray([0,50,100,20,80,150]))

//Write a Swift program to take one array and sort it in descending order.
var arr:[Int] = [12,10,25,20,50]
print("Original array: ",arr)
arr.sort()
arr.reverse()
print("Sorted array: ",arr)

