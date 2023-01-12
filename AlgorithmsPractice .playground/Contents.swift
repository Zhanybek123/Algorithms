import UIKit

// find count of executive 1's in the array

//let array = [1, 2, 3, 1, 2, 1, 1, 1, 1]
//
//func returnMaxNum (_ array: [Int]) -> Int {
//    var globalCount = 0 // 1
//    var localCount = 0 //
//    for item in array { // n
//        if item == 1 {
//            localCount += 1 // n
//            globalCount = max(globalCount, localCount) // n
//        }
//        else {
//            localCount = 0 // n
//        }
//    }
//    return globalCount // 1
//}

//print(returnMaxNum(array))


// complexity 1 + 1 + n + n + n +1 = O(n)

// Find majority elements in the given array
//
//let array = [2, 2, 3, 2, 3, 2, 3, 3, 2]
//
//func findMajorutyElement (_ array: [Int]) -> Int {
//    var majorityItem = array[0]
//    var counter = 0
////    print("\(majorityItem) majority")
//    for item in array {
////        print("\(item) item")
//        if item == majorityItem {
//            counter += 1
//        } else {
//            counter -= 1
//        }
//        if counter == 0 {
//            majorityItem = item
//            counter += 1
//        }
//    }
//    return majorityItem
//}
//
//findMajorutyElement(array)
//
//print(findMajorutyElement(array))

// conclusion:
// in order to get majority element in the array, I have to increment counter each time if it's equals to the majorityItem, and decremant counter if it's not. when counter


// find count of executive 1's in the array

//let arr = [1, 2, 3, 1, 2, 1, 1, 1, 1]
//
//func findExecutiveOnes (_ arr:[Int]) -> Int {
//    var overallCount = Int()
//    var innerCount = Int()
//
//    for n in arr {
//        if n == 1 {
//            innerCount += 1
//            overallCount = max(innerCount, overallCount)
//        } else {
//            innerCount = 0
//        }
//    }
//    return overallCount
//}

//print(findExecutiveOnes(arr))


// Find majority element in the given array

let array = [ 3, 2, 2, 2, 3, 3, 2, 2, 2, 3, 3, 3, 3 ]
//            1  1  2  3  2  1  1  2

func findMajorityElement (_ arr: [Int]) -> Int {
    var counter = 0
    var majotiryElement = arr[0]
    
    for n in arr {
        if n == majotiryElement {
            counter += 1
        } else {
            counter -= 1
        }
        if counter == 0 {
            majotiryElement = n
            counter += 1
        }
    }
    return majotiryElement
}

print(findMajorityElement(array))
 
