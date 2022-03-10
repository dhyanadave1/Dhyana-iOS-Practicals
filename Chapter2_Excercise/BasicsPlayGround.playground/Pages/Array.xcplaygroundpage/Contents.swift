//Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
func check_first_last(_ myArray: [Int]) -> Bool {
    guard myArray.count > 0 else {
        return false
    }
    if myArray.first == myArray.last {
        return true
    } else {
        return false
    }
}
print(check_first_last([1, 2, 3, 1]))

//Create a new array with double the lenght of a given array of integers and its last element is the same as the given arrayprint(check_first_last([1, 2, 3, 1]))
func new_array(_ a: [Int]) -> [Int] {
    var new_array: [Int] = [a.last!]
    for _ in a {
        new_array.insert(0, at: new_array.startIndex)
        new_array.insert(0, at: new_array.startIndex)
    }
    new_array.remove(at: 0)
    return new_array
}
print(new_array([1, 2, 3, 4]))

// Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array
func Myarray(_ a: [Int]) -> [Int] {
    guard a.count > 1 else {
        return a
    }
    return Array(a.prefix(2))
}
print(Myarray([0,50,100,20,80,150]))

//Write a Swift program to take one array and sort it in descending order.
var arr:[Int] = [12,10,25,20,50]
print("Original array: ",arr)
arr.sort()
arr.reverse()
print("Sorted array: ",arr)

