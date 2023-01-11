import UIKit

// find count of executive 1's in the array

let array = [1, 2, 3, 1, 2, 1, 1, 1, 1]

func returnMaxNum (_ array: [Int]) -> Int {
    var globalCount = 0 // 1
    var localCount = 0 //
    for item in array { // n
        if item == 1 {
            localCount += 1 // n
            globalCount = max(globalCount, localCount) // n
        }
        else {
            localCount = 0 // n
        }
    }
    return globalCount // 1
}

print(returnMaxNum(array))


// 1 + 1 + n + n + n +1 = O(n)
