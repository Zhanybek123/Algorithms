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

// Group anagrams

//class Solution {
//    func groupAnagrams(_ strs: [String]) -> [[String]] {
//        guard !strs.isEmpty else { return [[""]]}
//
//        var dict = [String: [String]]()
//        for string in strs {
//            let sortedString = String(string.sorted())
//
//            if var arrayOfValues = dict[sortedString] {
//                arrayOfValues.append(string)
//                dict[sortedString] = arrayOfValues
//            } else {
//            dict[sortedString] = [string]
//            }
//        }
//
//        return Array(dict.values)
//    }
//}
//  class Solution {
//    func groupAnagrams(_ strs: [String]) -> [[String]] {
//        guard !strs.isEmpty else { return [[""]]}
//
//        var dict = [String: [String]]()
//
//        for string in strs {
//            var charCount = [Int](repeating: 0, count: 26)
//
//            for char in string {
//                let indexOfChar = Int(char.asciiValue! - Character("a").asciiValue!)
//                charCount[indexOfChar] += 1
//            }
////          have to add hyphen here. empty string can give an error.   |
//            let key = charCount.map { String($0) }.joined(separator: "-")
//
//            if var arrayOfValues = dict[key] {
//                arrayOfValues.append(string)
//                dict[key] = arrayOfValues
//            } else {
//            dict[key] = [string]
//            }
//        }
//
//        return Array(dict.values)
//    }
//}
//






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


// Two strings are anagram

//class Solution {
//    func isAnagram(_ s: String, _ t: String) -> Bool {
//        guard !s.isEmpty && !t.isEmpty else { return false }
//
//        var dict1 = [Character: Int]()
//        var dict2 = [Character: Int]()
//
//        for char in s {
//            dict1[char, default: 0] += 1
//        }
//
//        for char in t {
//            dict2[char, default: 0] += 1
//        }
//        return dict1 == dict2
//    }
//}
//







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
////
////
////
////
//let haystack = "treello"
//let needle = "ll"
//
//let haystack2 = "books"
//let needle2 = "ak"
//
//let haystack3 = "Mello"
//let needle3 = "o"
////
//func findNeedle(_ word: String, _ needle: String) -> Int {
//    let wordArray = Array(word)
//    let needleArray = Array(needle)
//    let wordLength = wordArray.count
//    let needleLength = needleArray.count
//
//    let looplength = wordLength - needleLength
//    //    print(looplength)
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

//class Node {
//    var data: Int
//    var next: Node?
//
//    init(data: Int) {
//        self.data = data
//    }
//}
//
//extension LinkedList: CustomStringConvertible {
//    public var description: String {
//        guard let head = head else {
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
//
//list.delete(key: 6)
//print("After deletion")
//list.printList()
//
////      Reverse Linked list
//
//func reverseList() {
//    var current = list.head
//    var next: Node?
//    var prev: Node?
//
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
//


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
//            repeat {
//                count += 1
//                fast = fast!.next
//            }
//            while slow!.data != fast!.data
//
//            print(count)
//            return true
//        }
//    }
//    return false
//}
//
//
//var list = Node(data: 1)
//list.next = Node(data: 2)
//let three = Node(data: 3)
//list.next?.next = three
//list.next?.next?.next = Node(data: 4)
//list.next?.next?.next?.next = Node(data: 5)
//list.next?.next?.next?.next?.next = three
//
//let detect = detectAndCountCycle(list)
//
//print(detect)


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
//                print("something")
//            }
//            print(count)
//            return true
//        }
//    }
//    return false
//}


// Given a linked list, detect if there is a loop/cycle in thr list, also detect as where the cycle started

//
//func detectLoopAndCycleStart(_ list: Node?) -> Bool {
//    if list == nil { return false }
//
//    var slow = list
//    var fast = list
//
//    while slow!.next != nil && fast!.next != nil && fast!.next!.next != nil {
//        slow = slow!.next
//        fast = fast!.next!.next
//
//        if slow!.data == fast!.data {
//            var count = 0
//
//            repeat {
//                count += 1
//                slow = slow?.next
//            }
//            while slow!.data != fast!.data
//
//                    print(count)
//
//                    var first = list
//                    var second = list
//
//                    while count > 0 {
//                first = first!.next
//                count -= 1
//            }
//
//            while first!.data != second!.data {
//                first = first!.next
//                second = second!.next
//            }
//            print(first!.data)
//            return true
//        }
//    }
//
//    return false
//}
//
//
//var list = Node(data: 1)
//list.next = Node(data: 2)
//list.next?.next = Node(data: 3)
//let four = Node(data: 4)
//list.next?.next?.next = four
//list.next?.next?.next?.next = Node(data: 5)
//list.next?.next?.next?.next?.next = Node(data: 6)
//list.next?.next?.next?.next?.next?.next = four
//
//let detect = detectLoopAndCycleStart(list)
//
//print(detect)
//
//         |
//1  2  3  4  5








// Given a linked list with cycle in it, detect where the cycle starts without counting length of the loop


//func detectLoopAndCycleStart(_ list: Node?) -> Bool {
//    if list == nil { return false }
//
//    var slow = list
//    var fast = list
//
//    while slow!.next != nil && fast!.next != nil && fast!.next!.next != nil {
//        slow = slow!.next
//        fast = fast!.next!.next
//
//        if slow!.data == fast!.data {
//            var count = 0
//
//            repeat {
//                slow = slow?.next
//                count += 1
//            } while slow!.data != fast!.data
//
//            print(count)
//
//            var first = list
//            var second = list
//
//            while count > 0 {
//                first = first!.next
//                count -= 1
//            }
//
//            while first!.data != second!.data {
//                fast = first!.next
//                second = second!.next
//            }
//            print(second!.data)
//            return true
//        }
//
//    }
//    return false
//}
//
//
//var list = Node(data: 1)
//list.next = Node(data: 2)
//list.next?.next = Node(data: 3)
//let four = Node(data: 4)
//list.next?.next?.next = four
//list.next?.next?.next?.next = Node(data: 5)
//list.next?.next?.next?.next?.next = Node(data: 6)
//list.next?.next?.next?.next?.next?.next = four
//
//let detect = detectLoopAndCycleStart(list)
//
//print(detect)


//
//class Solution {
//    func mergeTwoLists(_ list1: Node?, _ list2: Node?) -> Node? {
//        var list1 = list1; var list2 = list2
//        var result: Node? = Node(data: 5)
//        var head = result
//
//        while list1!.data != nil && list2!.data != nil {
//            if list2!.data < list2!.data {
//                result!.next = list1
//                list1 = list1!.next
//            } else {
//                result!.next = list2
//                list2 = list2!.next
//            }
//            result = result?.next!
//        }
//
//        if list1 != nil {
//            result!.next = list1
//        } else {
//            result!.next = list2
//        }
//
//        head = head!.next
//        return head
//    }
//}
//





// Given a linked list with cycle in it, detect where the cycle starts without counting length of the loop

//
//func detectCycleStart(_ list: Node?) -> Node? {
//    if list == nil { return nil }
//
//    var fast = list
//    var slow = list
//
//    while slow!.next != nil && fast!.next!.next != nil {
//        slow = slow!.next
//        fast = fast!.next!.next
//
//        if slow!.data == fast!.data {
//
//            slow = list
//
//            while slow!.data != fast!.data {
//                slow = slow!.next
//                fast = fast!.next
//            }
//            return slow
//        }
//    }
//    return nil
//}
//
//
//var list = Node(data: 1)
//list.next = Node(data: 2)
//list.next?.next = Node(data: 3)
////let four = Node(data: 4)
//list.next?.next?.next = Node(data: 4)
//let five = Node(data: 5)
//list.next?.next?.next?.next = five
//list.next?.next?.next?.next?.next = Node(data: 6)
//list.next?.next?.next?.next?.next!.next = Node(data: 7)
//list.next?.next?.next?.next?.next!.next!.next = five
////list.next?.next?.next?.next?.next?.next = four
//
//let detect = detectCycleStart(list)
//
//print(detect!.data)



//func duplicateChar(string: String) {
//    var lowercasedString = string.lowercased()
//    var dict = [Character: Int]()
//
//    for char in lowercasedString {
//        dict[char, default: 0] += 1
//    }
//
//    for (char, count) in dict {
//        if count > 1 {
//            print("\(char) in \(string), \(count) times")
//        }
//    }
//}
//
//var word = "Sister Mister"
//
//duplicateChar(string: word)


//func isAnagram(str1: String, str2: String) -> Bool {
//
//    var dic1 = [Character: Int]()
//    var dic2 = [Character: Int]()
//
//    for char in str1 {
//        dic1[char, default: 0] += 1
//    }
//
//    for char in str2 {
//        dic2[char, default: 0] += 1
//    }
//
//    return dic1 == dic2
//
//}
//var word1 = "agaa"
//var word2 = "gaaa"
//
//let anagram = isAnagram(str1: word1, str2: word2)


//func permute<C: Collection>(items: C) -> [[C.Iterator.Element]] {
//    var scratch = Array(items) // This is a scratch space for Heap's algorithm
//    var result: [[C.Iterator.Element]] = [] // This will accumulate our result
//
//    // Heap's algorithm
//    func heap(_ n: Int) {
//        if n == 1 {
//            result.append(scratch)
//            return
//        }
//
//        for i in 0..<n-1 {
//            heap(n-1)
//            let j = (n%2 == 1) ? 0 : i
//            scratch.swapAt(j, n-1)
//        }
//        heap(n-1)
//    }
//
//    // Let's get started
//    heap(scratch.count)
//
//    // And return the result we built up
//    return result
//}
//
//
//let string = "abc"
//permute(items: string)
//print(string)


//func permuteString(_ str: String) -> [String] {
//    if str.isEmpty {
//        return []
//    }
//
//    var permutations = [String]()
//    permuteHelper(Array(str), 0, &permutations)
//    return permutations
//}
//
//func permuteHelper(_ str: [Character], _ index: Int, _ permutations: inout [String]) {
//    if index == str.count - 1 {
//        let permutation = String(str)
//        permutations.append(permutation)
//        print("add \(permutations)")
//    } else {
//        for i in index..<str.count {
//            print("\(i) circle, \(index) index")
//            var newStr = str
//            newStr.swapAt(index, i)
//            permuteHelper(newStr, index + 1, &permutations)
//        }
//    }
//}
//
//// Example usage
//let inputString = "abc"
//let permutations = permuteString(inputString)
//print(permutations)


//func permutation(string: String) -> [String] {
//    let stringArray = Array(string)
//    var result = [String]()
//    func permutate(index: Int, string: [Character]) {
//        if index == stringArray.count {
//            result.append(String(string))
//        } else {
//            for i in index..<string.count {
//                var newValue = string
//                newValue.swapAt(i, index)
//                permutate(index: index + 1, string: newValue)
//                newValue.swapAt(i, index)
//            }
//        }
//    }
//    permutate(index: 0, string: stringArray)
//    return result
//}
//
//let input = "abc"
//permutation(string: input)
//print(permutation(string: input))


//func permuteString(_ str: String) -> [String] {
//    var permutations = [String]()
//
//    func permute(_ str: [Character], _ startIndex: Int) {
//        if startIndex == str.count {
//            permutations.append(String(str))
//        } else {
//            var newStr = str
//            for i in startIndex..<str.count {
//                newStr.swapAt(startIndex, i)
//                permute(newStr, startIndex + 1)
//                newStr.swapAt(startIndex, i)
//            }
//        }
//    }
//
//    let charArray = Array(str)
//    permute(charArray, 0)
//
//    return permutations
//}
//
//// Example usage
//let inputString = "abc"
//let permutations = permuteString(inputString)
//print(permutations)


//func permuteString(_ str: String) -> [String] {
//    if str.isEmpty {
//        return []
//    }
//
//    var permutations = [String]()
//    permuteHelper(Array(str), 0, &permutations)
//    return permutations
//}
//
//func permuteHelper(_ str: [Character], _ index: Int, _ permutations: inout [String]) {
//    if index == str.count - 1 {
//        let permutation = String(str)
//        permutations.append(permutation)
//        print("add \(permutations)")
//    } else {
//        for i in index..<str.count {
//            print("\(index) index, \(i) number")
//            var newStr = str
//            newStr.swapAt(index, i)
//            print("new string - \(newStr)")
//            permuteHelper(newStr, index + 1, &permutations)
//        }
//    }
//}
//
//// Example usage
//let inputString = "abc"
//let permutations = permuteString(inputString)
//print(permutations)


//func permutate(string: String) -> Int {
//    guard !string.isEmpty else { return 0 }
//    let stringArray = Array(string)
//    var results = [String]()
//    permutateHelper(arrChar: stringArray, startIndex: 0, result: &results)
//    var resultCount = results.count
//    return resultCount
//}
//
//func permutateHelper(arrChar: [Character], startIndex: Int, result: inout [String]) {
//    if startIndex == arrChar.count - 1 {
//        let stringChar = String(arrChar)
//        result.append(stringChar)
//    } else {
//        for i in startIndex..<arrChar.count {
//            var newString = arrChar
//            newString.swapAt(i, startIndex)
//            permutateHelper(arrChar: newString, startIndex: startIndex + 1, result: &result)
//        }
//    }
//}

//let randomString = "abc"
//permutate(string: randomString)
//print(permutate(string: randomString))
//
//
//func permutate(string: String) -> [String] {
//    guard !string.isEmpty else { return [] }
//    var stringArray = Array(string)
//    var results = [String]()
//    permutateHelper(string: stringArray, startIndex: 0, results: &results)
//    return results
//}
//
//
//func permutateHelper(string: [Character], startIndex: Int, results: inout [String]) {
//    if startIndex == string.count - 1 {
//        let result = String(string)
//        results.append(result)
//    } else {
//        for i in startIndex..<string.count {
//            var newString = string
//            newString.swapAt(i, startIndex)
//            permutateHelper(string: newString, startIndex: startIndex + 1, results: &results)
//        }
//    }
//}


// Reverse a string in place

//func reverseString(string: inout String) {
//    guard !string.isEmpty else { return }
//
//    var stringArr = Array(string)
//    var left = 0
//    var right = string.count - 1
//
//    while left < right {
//        var temp = stringArr[left]
//        stringArr[left] = stringArr[right]
//        stringArr[right] = temp
//
//        left += 1
//        right -= 1
//    }
//
//    string = String(stringArr)
//}
//
//var string = "love"
//reverseString(string: &string)
//print(string)

//

//func hasDuplicate(string: String) -> [String] {
//    guard !string.isEmpty else {return []}
//    var dict = [Character: Int]()
//    var results = [String]()
//    for i in string {
//        dict[i, default: 0] += 1
//    }
//    for (key , value) in dict {
//        if value > 1 {
//            results.append(String(key))
//        }
//    }
//    return results
//}
//
//
//let myString = "sassy"
//print(hasDuplicate(string: myString))


// Reverse string with recursion

//ds


// check if string contains only digits

//func onlyDigits(string: String) -> Bool {
//    let decimal = CharacterSet.decimalDigits
//    let charcterSet = CharacterSet(charactersIn: string)
//
//    return decimal.isSuperset(of: charcterSet)
//}
//
//print(onlyDigits(string: "12345a"))


// Find Palyndrome String

//func isPalindrome(string: String) -> Bool {
//    var stringArr = Array(string)
//    var first = 0
//    var last = stringArr.count - 1
//
//    while first < last {
//        if stringArr[first] == stringArr[last] {
//            first += 1
//            last -= 1
//            continue
//        } else {
//            return false
//        }
//    }
//    return true
//}
//
//
//let myString = "kazak"
//
//print(isPalindrome(string: myString))


//func isPalindrome(int: Int) -> Bool {
//    var stringInt = String(int)
//    var stringArr = Array(stringInt)
//    var left = 0
//    var right = stringArr.count - 1
//
//    while left < right {
//        if stringArr[left] == stringArr[right] {
//            left += 1
//            right -= 1
//        } else { return false}
//    }
//
//    return true
//}
//
//let myInt = 3834
//print(isPalindrome(int: myInt))

//func isPalindrome(int: Int) -> Bool {
//    if int == 0 {
//        return false
//    }
//
//    var number = int
//    var result = 0
//
//    while number != 0 {
//        var remainder = number % 10
//        result = result * 10 + remainder
//        number /= 10
//    }
//    return result == int
//}
//
//let myNumber = 353
//print(isPalindrome(int: myNumber))


// Find duplicate characters in a given array

//func duplicateCharacters(string: String) -> [String] {
//    guard !string.isEmpty else { return [] }
//    var stringArr = Array(string)
//    var dict = [Character: Int]()
//    var result = [String]()
//
//    for i in 0..<stringArr.count - 1 {
//        dict[stringArr[i], default: 0] += 1
//    }
//
//    for (key, value) in dict {
//        if value > 1 {
//            result.append(String(key))
//        }
//    }
//
//    return result
//}
//
//let myString = "barbara"
//print(duplicateCharacters(string: myString))




// Count Vowels And Consonants

//func countVowelsAndConsonants(string: String) -> [String: Int] {
//    guard !string.isEmpty else { return [:] }
//    let vowels: Array<Character> = ["a", "e", "o", "i", "u", "y"]
//    var result = [String: Int]()
//
//    for char in string.lowercased() {
//        if vowels.contains(char) {
//            result["vowels", default: 0] += 1
//        } else {
//            result["consonants", default: 0] += 1
//        }
//    }
//    return result
//}
//
//let myString = "Somethingy"
//print(countVowelsAndConsonants(string:myString))




//func countVowelsAndConsonants(string: String) -> [String: Int] {
//    guard !string.isEmpty else { return [:] }
//
//    let vowels: Set<Character> = ["a", "e", "o", "i", "u"]
//    let consonants: Set<Character> = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
//
//    var result = [String: Int]()
//
//    for char in string.lowercased() {
//        if vowels.contains(char) {
//            result["vowels", default: 0] += 1
//        } else if consonants.contains(char) {
//            result["consonants", default: 0] += 1
//        }
//    }
//
//    return result
//}
//
//// Example usage
//let inputString = "Hello, World!"
//let counts = countVowelsAndConsonants(string: inputString)



// Find longest prefix

//    func longestCommonPrefix(_ strs: [String]) -> String {
//        guard !strs.isEmpty else { return ""}
//        if strs.count == 1 { return strs[0]
//        }
//
//        let first = strs[0]
//        var result = ""
//
//        for i in 0..<first.count - 1 {
//            // first character
//            let char = first[first.index(first.startIndex, offsetBy: i)]
//            for j in 1..<strs.count {
//                let string = strs[j]
//                let char2 = string[string.index(string.startIndex, offsetBy: i)]
//
//                if char != char2 && first.count != string.count {
//                    return result
//                }
//            }
//            result.append(char)
//        }
//        return result
//    }
//
//    let myStringArr = ["Dowg", "Dow", "Down"]
//    print(longestCommonPrefix(myStringArr))
//

//var exampleArray = [0, 4, 5, 8, 0]
//
//func moveZeroes(_ nums: inout [Int]) {
//       guard !nums.isEmpty else { return }
//
//       var count = 0
//
//       for i in 0..<nums.count - 1 {
//           if nums[i] != 0 {
//               nums.swapAt(i, count)
//               count += 1
//           }
//       }
//   }
//moveZeroes(&exampleArray)
//print(exampleArray)


// Reverse linked list practice

//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//
//    public init() {
//        self.val = 0; self.next = nil
//    }
//    public init(_ val: Int) {
//        self.val = val; self.next = nil
//
//    }
//    public init(_ val: Int, _ next: ListNode?) {
//        self.val = val; self.next = next
//
//    }
//}
//
//
//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        guard head != nil else { return ListNode() }
//
//        var current = head
//        var next: ListNode?
//        var prev: ListNode?
//
//        while current != nil {
//            next = current?.next
//            current?.next = prev
//            prev = current
//            current = next
//        }
//        return prev
//    }
//}
//
//let solution = Solution()

    
//Top K Frequent Elements

//class Solution {
//    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
//        guard !nums.isEmpty else { return [] }
//
//        var dict = [Int: Int]()
//        var result = [Int]()
//        var count = k
//
//        for number in nums {
//            dict[number, default: 0] += 1
//        }
//
//        var sortedDict = dict.sorted(by: {$0.value > $1.value})
//
//        for (key, value) in sortedDict {
//            if count == 0 {
//                return result
//            }
//            result.append(key)
//            count -= 1
//        }
//
//        return result
//    }
//}



//Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.
//
//
//class Solution {
//    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
//        guard !nums.isEmpty else { return [] }
//
//        var dict = [Int: Int]()
//        var result = [Int]()
//        var count = k
//
//        for number in nums {
//            dict[number, default: 0] += 1
//        }
//
//        var sortedDict = dict.sorted(by: {$0.value > $1.value})
//
//        for (key, value) in sortedDict {
//            if count == 0 {
//                return result
//            }
//            result.append(key)
//            count -= 1
//        }
//
//        return result
//    }
//}
