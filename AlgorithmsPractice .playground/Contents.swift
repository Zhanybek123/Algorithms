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

//let array = [ 3, 2, 2, 2, 3, 3, 2, 2, 2, 3, 3, 3, 3 ]
////            1  1  2  3  2  1  1  2
//
//func findMajorityElement (_ arr: [Int]) -> Int {
//    var counter = 0
//    var majotiryElement = arr[0]
//
//    for n in arr {
//        if n == majotiryElement {
//            counter += 1
//        } else {
//            counter -= 1
//        }
//        if counter == 0 {
//            majotiryElement = n
//            counter += 1
//        }
//    }
//    return majotiryElement
//}
//
//print(findMajorityElement(array))







// Given an array if size n, find all elements that appear more than [n/3] times

//let array1 = [3,2,3]
//let array2 = [1,1,1,3,3,2,2,2]
//
//func findElements (_ array: [Int]) -> [Int] {
//    var dictionary = [Int: Int]()
//    var mostAppeared = [Int]()
//
//    for item in array {
//        if dictionary[item] != nil {
//            dictionary[item]! += 1
//        } else {
//            dictionary[item] = 1
//        }
//    }
//    var x = 3
//    for (key, value) in dictionary {
//        if value > array.count/x {
//            mostAppeared.append(key)
//        }
//    }
//    return mostAppeared
//}
//
//print(findElements(array2))








// Given two arrays, write a function to compute their intersection

//let arr = [1,2,2,1]
//let arr2 = [2,2]
//
//func computeIntersection (_ array: [Int], _ array2: [Int]) -> [Int] {
//
//    var set1 = Set<Int>()
//    for item in array {
//        set1.insert(item)
//    }
//    var set2 = Set<Int>()
//    for item in array2 {
//        set2.insert(item)
//    }
//    let intersection = Array(set1.intersection(set2))
//    return intersection
//}
//
//print(computeIntersection(arr, arr2))







// Given an array of integers, find if the array contains any duplicates

//let arr = [1,2,3,1]
//let arr2 = [1,2,3,4]
//let arr3 = [1,1,1,3,3,4,3,2,4,2]
//
//func findDuplicates (_ arr: [Int]) -> Bool {
//    var dictionary = [Int: Int] ()
//    for item in arr {
//        if dictionary[item] != nil {
//            return true
//        } else {
//            dictionary[item] = 1
//        }
//    }
//    return false
//}
//
//print(findDuplicates(arr3))





// Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k

//let nums1 = [1,2,3,1]; let k1 = 3 // output: true
//let nums2 = [1,0,1,1]; let k2 = 1 // output: true
//let nums3 = [1,2,3,1,2,3]; let k3 = 2 // output: false
//
//func duplicatesDist(_ arr: [Int], _ k: Int ) -> Bool {
//    var dictionary: Dictionary<Int, Int> = [:]
//    var distance = Int()
//    print("Input \(arr)")
//    for (index, item) in arr.enumerated() {
//        print("item:", item)
//        if dictionary[item] != nil {
//            let previousIndex = dictionary[item]!
//            print("previousIndex:", previousIndex)
//            let difference = index - previousIndex
//            print("defference:", difference)
//            distance = difference
//            print("minimum distanse:", distance)
//        }
//         dictionary[item] = index
//        print("dictionary:", dictionary)
//    }
//    if distance <= k {
//        return true
//    }
//    return false
//}
//
//print(duplicatesDist(nums3, k3))









// Given a sorted array "array", remove the duplicates in-place such that each element appreat only once and return the new length.
// Do not allocate extra space fot another array, you must do this by modifying the input array in-place with 0(1) extra memory

//var array = [1,1,2,2,2,3,3,3,3,4,4,4,4,5,6]

//func removeDuplicates() -> Int {
//    guard !array.isEmpty else {return 0}
//
//    var index = 0
//    for i in array {
////        print(arr)
////        print(i)
////        print(index)
//        if i != array[index] {
//            index += 1
//            array[index] = i
////            print(arr)
////            print(i)
////            print(index)
//        }
//    }
//    return index + 1
//}
//
//
//for i in 0..<removeDuplicates() {
//    print(array[i])
//}
//
//print(array)







// Given a sorted array "array", remove the duplicates in-place such that duplicates appear at most twice and return the new length.



//var array = [0,0,1,1,1,1,2,3,3]
//
//func removeDuplicates(_ arr: inout [Int]) -> Int {
//    guard !arr.isEmpty else {return 0}
//
//    var index = 1
//    for i in 2..<arr.count {
//        print(arr)
//        if arr[index] != arr[index - 1] || arr[i] != arr[index] {
//            index += 1
//            print(index)
//            arr[index] = arr[i]
//        }
//        print(arr)
//    }
//    return index + 1
//}
//
//
//print(removeDuplicates(&array))


//func removeDuplicate(_ arr: inout [Int]) -> Int {
//    guard !arr.isEmpty else {return 0}
//
//    var index = 1
//    for i in 2..<arr.count {
//        if arr[index] != arr[index - 1] || arr[index] != arr[i] {
//            index += 1
//            arr[index] = arr[i]
////            print(index)
////            print(arr[index])
//            print(arr)
//        }
//    }
//    return index + 1
//}
//
////removeDuplicate(&array)
//
//print(removeDuplicate(&array))



//func removeDuplicates(_ arr: inout [Int]) -> Int {
//    if arr.count  <= 2 {return arr.count}
//
//    var index = 1
//    for i in 2..<arr.count {
//        if arr[index] != arr[index - 1] || arr[index] != arr[i] {
//            index += 1
//            arr[index] = arr[i]
//            print(arr)
//        }
//    }
//    return index + 1
//}
//
//print(removeDuplicates(&array))



//  Given an array "array", write a function to move all 0's to the end of it while maintaining the relative order if the non-zero elements


//var array = [0,1,0,3,12]
//
//func moveZeros (_ arr: inout [Int]) -> [Int] {
//    guard !arr.isEmpty else {return arr}
//
//    var index = 0
//    for i in arr {
//        if i != 0 {
//            arr[index] = i
//            index += 1
//        }
//        print(arr)
//    }
//
//    for n in index..<arr.count {
//        arr[n] = 0
//        print(arr)
//    }
//return arr
//
//}
//
//print(moveZeros(&array))






var array = [3,2,2,3]; let val = 3
var array2 = [0,1,2,2,3,3,0,4,2]; let val2 = 2

func removeElement(_ arr: inout [Int], _ val: Int) -> Int {
    var index = 0
    for i in arr {
        if i != val {
            arr[index] = i
            index += 1
//            print(index)
//            print(arr)
        }
    }
    for n in index..<arr.count {
        arr[n] = val
    }
    print(arr)
    return index
}

print(removeElement(&array2, val2))
