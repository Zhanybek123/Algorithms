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
//
//print(returnMaxNum(array))


// complexity 1 + 1 + n + n + n +1 = O(n)


//let array = [1,1,0,1,1,1,2,2,1,1,1,1,1,1]
//
//func  findConsecutives(_ arr: [Int]) -> Int {
//    guard !arr.isEmpty else {return 0}
//
//    var count = 0
//    var overallCount = 0
//
//    for n in arr {
//        if n == 1 {
//            count += 1
//            overallCount = max(overallCount, count)
//        } else {
//            count = 0
//        }
//    }
//    return overallCount
//}
//print(findConsecutives(array))









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
//for (index, item) in arr.enumerated() {                           00000
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


//var array = [3,2,2,3]; let val = 3
//var array2 = [0,1,2,2,3,3,0,4,2]; let val2 = 2
//
//func removeElement(_ arr: inout [Int], _ val: Int) -> Int {
//    var index = 0
//    for i in arr {
//        if i != val {
//            arr[index] = i
//            index += 1
////            print(index)
////            print(arr)
//        }
//    }
//    for n in index..<arr.count {
//        arr[n] = val
//    }
//    print(arr)
//    return index
//}
//
//print(removeElement(&array2, val2))











//let number = [2,3,3,5,15]
//
//func fizzBuzz(_ number: Int) {
//
//    let three = 3
//    let five = 5
//
//    for n in 1...number {
//        if n % 3 == 0 {
//            print("\"fizz\"")
//        }
//        else if n % 5 == 0 {
//            print("\"buzz\"")
//        }
//        else if n == 3 * 5 {
//            print("\"fizzbuzz\"")
//        } else {
//            print(String("\"\(n)\""))
//        }
//    }
//}

//print(fizzBuzz(number))








// whrite a func to check if string is palindrome or not

//let polindrome = "bob"
//let polindrome2 = "A man, a plan, a canal: Panama"
//
//func isPolindrome(_ word: String) -> Bool {
//    if word.isEmpty { return false }
//
//    let arr = Array(word.lowercased())
//    var pointer1 = 0
//    var pointer2 = arr.count - 1
//
//    while pointer1 <= pointer2 {
//
//        if isAlphaNum(arr[pointer1]) == false && pointer1 < pointer2 {
//            pointer1 += 1
//            continue
//        }
//
//        if isAlphaNum(arr[pointer2]) == false && pointer1 < pointer2 {
//            pointer2 -= 1
//            continue
//        }
//
//        if arr[pointer1] == arr[pointer2] {
//            pointer1 += 1
//            pointer2 -= 1
//        }
//        else {
//            return false
//        }
//    }
//    return true
//}
//
//func isAlphaNum (_ char: Character) -> Bool {
//    return char.isNumber || char.isLetter
//}

//print(isPolindrome(polindrome2))









// Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, retrurn -1


//let example = "devtechie"   //  return should be 0
//let example2 = "interctiven"
//
//
//func firstUniqueCharacter(_ word: String) -> Int {
//    guard !word.isEmpty else { return 0 }
//
////    var dictionaty: Dictionary<Int, String> = [:]
////    var dictionary = [Int: Character]()
////    let arr = Array(word.enumerated())
//
////    let arr = Array(word)
//    var dictionary: Dictionary<Character, Bool> = [:]
//
//    for item in word {
//        if dictionary[item] != nil {
//            dictionary[item] = false
//        } else {
//            dictionary[item] = true
//        }
//    }
//
//    for (index, item) in word.enumerated() {
//        if dictionary[item] == true {
//            return index
//        }
//    }
//
//    return -1
//}
//
//print(firstUniqueCharacter(example2))






///////////////////////////////////////////////////////////////////////////


// Construction of Stack data structure
//
//struct Stack {
//    private var items: [String] = []
//
//    func peek() -> String {
//        guard let topElement = items.first else { fatalError("This stack is empty.") }
//        return topElement
//    }
//
//    mutating func pop() -> String {
//        return items.removeFirst()
//    }
//
//    mutating func push(_ element: String) {
//        items.insert(element, at: 0)
//    }
//}
//
//extension Stack: CustomStringConvertible {
//    var description: String {
//        let topDivider = "---Stack---\n"
//        let bottomDivider = "\n-----------\n"
//
//        let stackElements = items.joined(separator: "\n")
//
//        return topDivider + stackElements + bottomDivider
//    }
//}
//
//var nameStack = Stack()
//
//nameStack.push("Caleb")
//nameStack.push("Charles")
//nameStack.push("Tina")
//
//print(nameStack)
//
//var nameStack2 = Stack()
//nameStack2.push(8)
//nameStack2.push(7)
//nameStack2.push(6)
//
//print(nameStack2)






//
//struct Stack2 {
//    private var items: Dictionary<string, Bool> = [:]
//
//    func peek() -> String {
//        guard let topElement = items.first else { fatalError("This stack is empty.") }
//        return topElement
//    }
//
//    mutating func pop() -> String {
//        return items.removeFirst()
//    }
//
//    mutating func push(_ element: String) {
//        items.insert(element, at: 0)
//    }
//}
//
//extension Stacks: CustomStringConvertible {
//    var description: String {
//        let topDivider = "---Stack---\n"
//        let bottomDivider = "\n-----------\n"
//
//        let stackElements = items.joined(separator: "\n")
//
//        return topDivider + stackElements + bottomDivider
//    }
//}
//
//var nameStack = Stack()
//
//nameStack.push("Caleb")
//nameStack.push("Charles")
//nameStack.push("Tina")
//
//print(nameStack)
//
//var nameStack2 = Stack()
//nameStack2.push(8)
//nameStack2.push(7)
//nameStack2.push(6)
//
//print(nameStack2)
///////////////////////////////////////////////////////////////////////////








// Given a non-empty string word, you may delete at most one character. Judge whether you can make it a palindtome

//var word = "abcbavb"
//
//func isPalindrome(_ string: String) -> Bool {
//    var array = Array(string)
//    return canBePalindrome(array, 0, array.count - 1, false)
//}
//
//func canBePalindrome(_ arr:[Character], _ firstIndex: Int, _ lastIndex: Int, _ removed: Bool) -> Bool {
//
//    var firstIndex = firstIndex
//    var lastIndex = lastIndex
//
//    while firstIndex < lastIndex {
//        if arr[firstIndex] == arr[lastIndex] {
//            firstIndex += 1
//            lastIndex -= 1
//        } else {
//            if removed == true {
//                return false
//            } else {
//                return canBePalindrome(arr, firstIndex + 1, lastIndex, true) || canBePalindrome(arr, firstIndex, lastIndex - 1, true)
//            }
//        }
//    }
//    return true
//}
//
//
//print(isPalindrome(word))









// Count and say



//func countAndSay(_ array: [Int]) -> [Int] {
//    var arr = array
//    var count = 1
//    var item = arr[0]
//    arr.removeFirst()
//    var result: Array<Int> = Array()
//
//    for i in arr {
////        print(arr)
//        if i == item {
//            count += 1
//        } else {
//            result.append(count)
//            result.append(item)
//            count = 1
//            item = i
////            print("result", result)
//        }
//    }
//    result.append(count)
//    result.append(item)
//    return result
//}
//
//
//func callCountAnsSay (times num: Int) -> [Int] {
//    var arr = [1]
//    if num <= 0 {
//        return []
//    }
//    if num == 1 {
//        return arr
//    }
//
//    for _ in 0..<num {
//        arr = countAndSay(arr)
//        print(arr)
//    }
//    return arr
//}
//
//print("total", callCountAnsSay(times: 4))


//
//
//
//
//let haystack = "treello"
//let needle = "ll"
//
//let haystack2 = "books"
//let needle2 = "ak"
//
//let haystack3 = "Mello"
//let needle3 = "o"
//
//func findNeedle(_ word: String, _ needle: String) -> Int {
//    let wordArray = Array(word)
//    let needleArray = Array(needle)
//    let wordLength = wordArray.count
//    let needleLength = needleArray.count
//
//    let looplength = wordLength - needleLength
////    print(looplength)
//
//    if wordLength < needleLength { return -1}
//    if wordLength <= 0 { return -1}
//
//    for i in 0...looplength {
//        if wordArray[i] == needleArray[0] {
//            for j in 0..<needleLength {
//                if j + 1 == needleLength {
//                    return i
//                }
//                if wordArray[i+j] != needleArray[j] {
//                    break
//                }
//            }
//        }
//    }
//
//
//    return -1
//}
//
//print(findNeedle(haystack3, needle3))



//let haystack = "treello"
//let needle = "ll"
//
//let haystack2 = "bookse"
//let needle2 = "ak"
//
//let haystack3 = "Mello"
//let needle3 = "o"
//
//func findNeedle(_ word: String, _ needle: String) -> Int {
//    var wordArray = Array(word)
//    var needleArray = Array(needle)
//    var wordLengt = word.count
//    var needleLength = needle.count
//
//    if wordLengt < needleLength {return -1}
//    if wordLengt <= 0 || needleLength <= 0 {return -1}
//
//    let totalLength = wordLengt - needleLength
//
//    for i in 0...totalLength {
//        if wordArray[i] == needleArray[0] {
//            for j in 0..<needleLength {
//                if wordArray[i + j] != needleArray[j] {
//                    break
//                }
//                if j + 1 == needleLength {
//                    return i
//                }
//            }
//        }
//    }
//
//    return -1
//}
//
//
//print(findNeedle(haystack3, needle3))



// Linked List structure

// Node

class Node {
    var data: Int
    var next: Node?
    
    init(data: Int) {
        self.data = data
    }
}

//extension LinkedList: CustomStringConvertible {
//    public var description: String {
//        guard let head =  head else {
//           return "List is empty"
//        }
//        return String(describing: head)
//    }
//}
//
//class LinkedList {
//    var head: Node?
//
//    func insert(data: Int) {
//        let newNode = Node(data: data)
//        newNode.next = head
//        head = newNode
//    }
//
//    func append(data: Int) {
//        if head == nil {
//            return insert(data: data)
//        }
//
//        var currentNode = head
//        while currentNode?.next != nil {
//            currentNode = currentNode?.next
//        }
//
//        let newNode = Node(data: data)
//        currentNode?.next = newNode
//    }
//
//    func find(key: Int) -> Node? {
//        var curr = head
//
//        while curr != nil && curr?.data != key {
//            curr = curr?.next
//        }
//        return curr
//    }
//
//
//    // deletion practice below
//
//    func delete(key: Int) -> Node? {
//        var current = head
//        var previous: Node?
//
//        while current != nil && current?.data != key {
//            previous = current
//            current = current?.next
//        }
//
//        if current != nil && previous == nil {
//            head = current?.next
//        } else if current == nil {
//            return nil
//        } else {
//            previous?.next = current?.next
//        }
//        return current
//    }
//
//
//
    
//    func delete (key: Int) -> Node? {
//        if head == nil { return head }
//        var current = head
//        var previous: Node?
//
//        while current != nil && current!.data != key {
//            previous = current
//            current = current?.next
//        }
//
//        if previous == nil && current != nil {
//            head = current!.next
//        } else if current == nil {
//            return nil
//        } else {
//            previous!.next = current!.next
//        }
//
//        return current
//    }
//
//    func printList() {
//        var curr = head
//        while curr != nil {
//            print(curr!.data)
//            curr = curr!.next
//        }
//    }
//}
//
//var list2 = LinkedList()
//
//list2.append(data: 1)
//list2.append(data: 2)
//
//var list = LinkedList()
//
//list.append(data: 1)
//list.append(data: 2)
//list.append(data: 3)
//list.append(data: 4)
//
//list.printList()

//list.delete(key: 6)
//print("After deletion")
//list.printList()

//      Reverse Linked list

//func reverseList() {
//    var current = list.head
//    var next: Node?
//    var prev: Node?
//    if current?.data == nil { return }
//
//    while current != nil {
//        next = current!.next
//        current?.next = prev
//        prev = current
//        current = next
//    }
//    list.head = prev
//}
//
//reverseList()
//print("-----------")
//list.printList()



//      Reverse Linked list Practice

//func reverseLinkedList() {
//    var current = list.head
//    var previous: Node?
//    var next: Node?
//
//    while current != nil {
//        next = current?.next
//        current?.next = previous
//        previous = current
//        current = next
//    }
//    return list.head = previous
//}
//
//reverseLinkedList()
//print("----------")
//list.printList()






//  Splice linked lists


//func mergeTwoLists (_  list1: Node?, _ list2: Node?) -> Node? {
//    var list1 = list1; var list2 = list2
//
//    var resultList: Node? = Node(data: -1)
//    var head = resultList
//
//    while list1 != nil && list2 != nil {
//        if list1!.data < list2!.data {
//            resultList!.next = list1
//            print("also inner", resultList?.data)
//            list1 = list1?.next
//        } else {
//            resultList!.next = list2
//            print("innerCount", resultList?.data)
//            list2 = list2?.next
//        }
//        resultList = resultList?.next
//        print("result", resultList?.data)
//    }
//
//    if list1 != nil {
//        resultList!.next = list1
//    } else {
//        resultList!.next = list2
//    }
//
//    head = head!.next
//    return head
//}
//
//
//
//var linkedList = Node(data: 1)
//linkedList.next = Node(data: 3)
//
//var linkedList2 = Node(data: 1)
//linkedList2.next = Node(data: 2)
//linkedList.next!.next = Node(data: 3)
//linkedList.next!.next!.next = Node(data: 4)
//
//
//var mergedList = mergeTwoLists(linkedList, linkedList2)
//while mergedList != nil {
//    print(mergedList?.data)
//    mergedList = mergedList?.next
//}



// Given a linked list, detect if there is a loop/cycle in the list

//Example:
//input = 1->2->3->4->3
//Output = true
//
//Input = 1->2->3->4
//Output = false

//func detectLoop(_ list: Node?) -> Bool {
//    if list == nil { return false}
//
//    var slow = list
//    var fast = list
//
//    while slow?.next != nil && fast?.next != nil && fast?.next?.next != nil {
//        slow = slow?.next
//        fast = fast?.next?.next
//
//        if slow?.data == fast?.data {
//            return true
//        }
//    }
//
//
//    return false
//}
//
//var list = Node(data: 1)
//list.next = Node(data: 2)
//let three = Node(data: 3)
//list.next?.next = three
//list.next?.next?.next = Node(data: 4)
//list.next?.next?.next?.next = Node(data: 5)
//list.next?.next?.next?.next?.next = three
//
//let detect = detectLoop(list)
//
//print(detect)


func detectAndCountCycle(_ list: Node?) -> Bool {
    if list == nil { return false }

    var slow = list
    var fast = list
    var count = 0

    while slow!.next != nil && fast!.next != nil && fast!.next!.next != nil {
        slow = slow!.next
        fast = fast!.next!.next

        if slow!.data == fast!.data {
            repeat {
                count += 1
                fast = fast!.next
            }
            while slow!.data != fast!.data

            print(count)
            return true
        }
    }
    return false
}


var list = Node(data: 1)
list.next = Node(data: 2)
let three = Node(data: 3)
list.next?.next = three
list.next?.next?.next = Node(data: 4)
list.next?.next?.next?.next = Node(data: 5)
list.next?.next?.next?.next?.next = three

let detect = detectAndCountCycle(list)

print(detect)


//func detectAndCountCycle(_ list: Node?) -> Bool {
//    if list == nil { return false }
//
//    var slow = list
//    var fast = list
//    var count = 0
//
//    while slow!.next != nil && fast!.next != nil && fast!.next!.next != nil {
//        slow = slow!.next
//        fast = fast!.next!.next
//
//        if slow!.data == fast!.data {
//            while slow!.data != fast!.data {
//                count += 1
//                fast = fast!.next
//            }
//            print(count)
//            return true
//        }
//    }
//    return false
//}
