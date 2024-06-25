import UIKit

// find count of executive 1's in the array
//
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
//
//
// complexity 1 + 1 + n + n + n +1 = O(n)
//
//
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
//
//
//
//
//
//
//
//
//
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
//
// conclusion:
// in order to get majority element in the array, I have to increment counter each time if it's equals to the majorityItem, and decremant counter if it's not. when counter
//
// Group anagrams
//
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
//
//
//
//
//
//
// find count of executive 1's in the array
//
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
//
//print(findExecutiveOnes(arr))
//
//
//
//
//
//
//
//
//
// Find majority element in the given array
//
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
//
//
//
//
//
//
//
// Given an array if size n, find all elements that appear more than [n/3] times
//
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
//
//
//
//
//
//
//
//
// Given two arrays, write a function to compute their intersection
//
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
//
//
//
//
//
//
//
// Given an array of integers, find if the array contains any duplicates
//
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
//
//
//
//
//
// Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k
//
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
//
//
// Two strings are anagram
//
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
//
//
//
//
//
//
//
// Given a sorted array "array", remove the duplicates in-place such that each element appreat only once and return the new length.
// Do not allocate extra space fot another array, you must do this by modifying the input array in-place with 0(1) extra memory
//
//var array = [1,1,2,2,2,3,3,3,3,4,4,4,4,5,6]
//
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
//
//
//
//
//
//
//
// Given a sorted array "array", remove the duplicates in-place such that duplicates appear at most twice and return the new length.
//
//
//
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
//
//
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
//
//
//
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
//
//
//
//  Given an array "array", write a function to move all 0's to the end of it while maintaining the relative order if the non-zero elements
//
//
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
//
//
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
//
//
//
//
//
//
//
//
//
//
//
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
//
//print(fizzBuzz(number))
//
//
//
//
//
//
//
//
// whrite a func to check if string is palindrome or not
//
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
//
//print(isPolindrome(polindrome2))
//
//
//
//
//
//
//
//
//
// Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, retrurn -1
//
//
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
//
//
//
//
//
//
///////////////////////////////////////////////////////////////////////////
//
//
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
//
//
//
//
//
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
//
//
//
//
//
//
//
//
// Given a non-empty string word, you may delete at most one character. Judge whether you can make it a palindtome
//
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
//
//
//
//
//
//
//
//
//
// Count and say
//
//
//
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
//
//
//
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
//
//
//
// Linked List structure
//
// Node
//
//class Node {
//    var data: Int
//    var next: Node?
//
//    init(data: Int) {
//        self.data = data
//    }
//}
//
extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
           return "List is empty"
        }
        return String(describing: head)
    }
}
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
//
//
//      Reverse Linked list Practice
//
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
//
//
//
//
//
//
//  Splice linked lists
//
//
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
//
//
//
// Given a linked list, detect if there is a loop/cycle in the list
//
//Example:
//input = 1->2->3->4->3
//Output = true
//
//Input = 1->2->3->4
//Output = false
//
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
//
//
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
//
//
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
//
//
// Given a linked list, detect if there is a loop/cycle in thr list, also detect as where the cycle started
//
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
//
//
//
//
//
//
//
//
// Given a linked list with cycle in it, detect where the cycle starts without counting length of the loop
//
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
//
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
//
//
//
//
//
// Given a linked list with cycle in it, detect where the cycle starts without counting length of the loop
//
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
//
//
//
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
//
//
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
//
//
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
//
//
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
//
//
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
//
//
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
//
//
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
//
//
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
//
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
//
//
// Reverse a string in place
//
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
//
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
//
//
// Reverse string with recursion
//
//ds
//
//
// check if string contains only digits
//
//func onlyDigits(string: String) -> Bool {
//    let decimal = CharacterSet.decimalDigits
//    let charcterSet = CharacterSet(charactersIn: string)
//
//    return decimal.isSuperset(of: charcterSet)
//}
//
//print(onlyDigits(string: "12345a"))
//
//
// Find Palyndrome String
//
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
//
//
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
//
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
//
//
// Find duplicate characters in a given array
//
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
//
//
//
//
// Count Vowels And Consonants
//
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
//
//
//
//
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
//
//
//
// Find longest prefix
//
//    func longestCommonPrefix(_ strs: [String]) -> String {
//        guard !strs.isEmpty else { return ""}
//        if strs.count == 1 { return strs[0]
//        }
//
//        let first = strs[0]
//        var result = ""
//
//        for i in 0..<first.count - 1 {
////             first character
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
//
//
// Reverse linked list practice
//
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
//
//
//Top K Frequent Elements
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
//
//
//
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
//
//
// Bucket sort approach
//
//class Solution {
//    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
//        guard !nums.isEmpty else { return [] }
//
//        var dict = [Int: Int]()
//        var result = [Int]()
//
//        for number in nums {
//            dict[number, default: 0] += 1
//        }
//
//        var bucket = Array(repeating: [Int](), count: nums.count + 1)
//
//        for (key, value) in dict {
//            bucket[value].append(key)
//        }
//
//        for i in stride(from: bucket.count - 1, through: 0, by: -1) {
//            result.append(contentsOf: bucket[i])
//            if result.count == k {
//                break
//            }
//        }
//
//        return result
//    }
//}
//
//
//
//
//
//  Valid Palindrome. 1. brute force. 2. two pointers
//
//
//1. class Solution {
//    func isPalindrome(_ s: String) -> Bool {
//        let resultString = s.lowercased().filter { $0.isNumber || $0.isLetter }
//
//        return resultString == String(resultString.reversed())
//    }
//}
//   2. class Solution {
//
//    func isPalindrome(_ s: String) -> Bool {
//        let array = Array(s.lowercased())
//        var firstPointer = 0
//        var secondPointer = array.count - 1
//
//        func isAlphanumeric(char: Character) -> Bool {
//            return char.isNumber || char.isLetter
//        }
//
//        while firstPointer < secondPointer {
//
//            if isAlphanumeric(char: array[firstPointer]) == false {
//                firstPointer += 1
//                continue
//            }
//
//            if isAlphanumeric(char: array[secondPointer]) == false {
//                secondPointer -= 1
//                continue
//            }
//
//            if array[firstPointer] == array[secondPointer] {
//                firstPointer += 1
//                secondPointer -= 1
//            } else {
//                return false
//            }
//        }
//
//        return true
//    }
//}
//
//
//Three Sum
//
//class Solution {
//    func threeSum(_ nums: [Int]) -> [[Int]] {
//        guard !nums.isEmpty else { return [[]] }
//
//        let orderedArr = nums.sorted()
//        var result = [[Int]]()
//
//        for i in 0..<orderedArr.count {
//            if i > 0 && orderedArr[i] == orderedArr[i - 1] {
//                continue
//            }
//
//            var left = i + 1
//            var right = orderedArr.count - 1
//
//            while left < right {
//
//                let sum = orderedArr[i] + orderedArr[left] + orderedArr[right]
//
//                if sum < 0 {
//                    left += 1
//                } else if sum > 0 {
//                    right -= 1
//                } else {
//                    result.append([orderedArr[i], orderedArr[left], orderedArr[right]])
//
//                    while orderedArr[left] == orderedArr[left + 1] && left < right {
//                        left + 1
//                    }
//
//                    while orderedArr[right] == orderedArr[right - 1] && left < right {
//                        left + 1
//                    }
//
//                    left += 1
//                    right -= 1
//
//                }
//            }
//        }
//
//        return result
//    }
//}
//
//Container With Most Water
//You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).
//
//Find two lines that together with the x-axis form a container, such that the container contains the most water.
//
//Return the maximum amount of water a container can store.
//
//Notice that you may not slant the container.
//
//class Solution {
//    func maxArea(_ height: [Int]) -> Int {
//        guard !height.isEmpty else { return 0 }
//
//        var result = 0
//        var minimum = Int.max
//
//        for i in 0..<height.count {
//            for j in i..<height.count where i != j {
//                print("height -", i, "height -", j)
//                minimum = min(height[i], height[j])
//                print("minimum", minimum)
//                let area = (j - i) * minimum
//                result = max(result, area)
//                print("reasult", result, "minimum * i" , (minimum * i), "\n")
//            }
//        }
//
//        return result
//    }
//}
//
//
// liniar solution.
//
//class Solution {
//    func maxArea(_ height: [Int]) -> Int {
//        guard !height.isEmpty else { return 0 }
//
//        var result = 0
//        var left = 0
//        var right = height.count - 1
//
//        while left < right {
//            let minimum = min(height[left], height[right])
//            let area = (right - left) * minimum
//            result = max(result, area)
//
//            if height[left] < height[right] {
//                left += 1
//            } else {
//                right -= 1
//            }
//        }
//        return result
//    }
//}
//
//
//
//Best Time to Buy and Sell Stock
//Brute force solution
//
//
//
//1. class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//       guard !prices.isEmpty else { return 0 }
//        var result = 0
//
//        for i in 0..<prices.count {
//            for j in i..<prices.count {
//                let sum = prices[j] - prices[i]
//                result = max(result, sum)
//                print("max", result, sum)
//            }
//        }
//
//        return result
//    }
//}
//
//        Two pointers solution
//
// 2. class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//       guard !prices.isEmpty else { return 0 }
//        var result = 0
//        var left = 0
//        var right = 1
//
//        while right <= prices.count - 1 {
//            let sum = prices[right] - prices[left]
//
//            if prices[left] > prices[right] {
//                left = right
//                right += 1
//            } else {
//                right += 1
//            }
//            result = max(result, sum)
//        }
//        return result
//    }
//}
//
//Kadane's algorithm solution
//
//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//        guard !prices.isEmpty else { return 0 }
//        var minPrice = Int.max
//        var ans = 0
//
//        for price in prices {
//            minPrice = min(minPrice, price)
//            print("minPrice", minPrice)
//            ans = max(ans, price - minPrice)
//            print("ans", ans)
//        }
//
//        return ans
//    }
//}
//
//
//
//Longest Substring Without Repeating Characters. Sliding window solution
//
//
//
//
//class Solution {
//    func lengthOfLongestSubstring(_ s: String) -> Int {
//        guard !s.isEmpty else { return 0 }
//        let array = Array(s)
//        var collection = Set<Character>()
//        var result = 0
//        var left = 0
//        var right = 0
//
//        while right < array.count {
//            let char1 = array[left]
//            let char2 = array[right]
//
//            if !collection.contains(char2) {
//                collection.insert(char2)
//                right += 1
//                result = max(result, right - left)
//            } else {
//                collection.remove(char1)
//                left += 1
//            }
//        }
//        return result
//    }
//}
//
// Binary tree
//



//class TreeNode {
//    var value: Int
//    var leftChild: TreeNode?
//    var rightChild: TreeNode?
//
//    init(value: Int, leftChild: TreeNode? = nil, rightChild: TreeNode? = nil) {
//        self.value = value
//        self.leftChild = leftChild
//        self.rightChild = rightChild
//    }
//}
//
//
//
//let rootTree = TreeNode(value: 4)
//rootTree.leftChild = TreeNode(value: 7)
//rootTree.leftChild?.leftChild = TreeNode(value: 6)
//rootTree.leftChild?.rightChild = TreeNode(value: 8)
//
//rootTree.rightChild = TreeNode(value: 10)
//rootTree.rightChild?.leftChild = TreeNode(value: 9)
//rootTree.rightChild?.rightChild = TreeNode(value: 12)
//
//class TreeReverse {
//
//    var valueArr = [Int]()
    
//    static func reverseTree(_ node: TreeNode?) -> TreeNode? {
//        guard node != nil else { return nil }
//
//        let temp = node?.leftChild
//        node?.leftChild = node?.rightChild
//        node?.rightChild = temp
//
//        reverseTree(node?.leftChild)
//        reverseTree(node?.rightChild)
//
//        return node
//    }
//
//    static func reverseTreeSecond(_ node: TreeNode?) -> TreeNode? {
//        guard let rootNode = node else { return nil }
//
//        let leftChildNode = reverseTreeSecond(rootNode.leftChild)
//        let rightChildNode = reverseTreeSecond(rootNode.rightChild)
//
//        rootNode.rightChild = leftChildNode
//        rootNode.leftChild = rightChildNode
//
//        return rootNode
//    }
//
//    static func reverseSecond(_ node: TreeNode?) -> TreeNode? {
//        guard let rootNode = node else { return nil }
//
//        let leftChildNode = reverseThird(rootNode.leftChild)
//        let rightChildNode = reverseThird(rootNode.rightChild)
//
//        rootNode.rightChild = leftChildNode
//        rootNode.leftChild = rightChildNode
//
//        return rootNode
//
//    }
//
//    static func reverseThird(_ node: TreeNode?) -> TreeNode? {
//        guard let rootNode = node else { return nil }
//
//        let leftChildNode = reverseForth(rootNode.leftChild)
//        let rightChildNode = reverseForth(rootNode.rightChild)
//
//        rootNode.rightChild = leftChildNode
//        rootNode.leftChild = rightChildNode
//
//        return rootNode
//
//    }
//
//    static func reverseForth(_ node: TreeNode?) -> TreeNode? {
//        guard let rootNode = node else { return nil }
//
//        let leftChildNode = reverseFifth(rootNode.leftChild)
//        let rightChildNode = reverseFifth(rootNode.rightChild)
//
//        rootNode.rightChild = leftChildNode
//        rootNode.leftChild = rightChildNode
//
//        return rootNode
//
//    }
//
//    static func reverseFifth(_ node: TreeNode?) -> TreeNode? {
//        guard let rootNode = node else { print("nil"); return nil }
//
//        let leftChildNode = reverseForth(rootNode.leftChild)
//        let rightChildNode = reverseForth(rootNode.rightChild)
//
//        rootNode.rightChild = leftChildNode
//        rootNode.leftChild = rightChildNode
//
//        return rootNode
//    }
    
//    func countValues(_ node: TreeNode?) -> TreeNode? {
//        guard node != nil else { return nil }
//
//        valueArr.append(node!.value)
//
//        countValues(node?.rightChild)
//        countValues(node?.leftChild)
//
//        return node
//    }
    
//}

//let result = TreeReverse.reverseTreeSecond(rootTree)
//print(result!.value)
//print(result!.leftChild!.value)
//print(result!.rightChild!.value)
//print(result!.leftChild!.leftChild!.value)
//print(result!.leftChild!.rightChild!.value)
//print(result!.rightChild!.leftChild!.value)
//print(result!.rightChild!.rightChild!.value)

// Bubble sort



//struct Bobble {
//    mutating func bubbleSort(array: inout [Int]) {
//        for i in 0..<array.count {
//            for j in 0..<array.count - i - 1 {
//                if array[j] > array[j + 1] {
//                    let temp = array[j]
//                    array[j] = array[j + 1]
//                    array[j + 1] = temp
//                }
//            }
//        }
//    }
//}
//
//var numArr = [2, 5, 6, 8, 4, 3, 7, 0, 1]
//var sorter = Bobble()
//sorter.bubbleSort(array: &numArr) // Pass the array by reference using `&`
//print(numArr) // The sorted array


// MARK: - Contains Duplicate
/*
 class Solution {
 func containsDuplicate(_ nums: [Int]) -> Bool {
 var dict: Dictionary<Int, Int> = [:]
 
 for num in nums {
 if let count = dict[num] {
 if count > 0 {
 return true
 }
 }
 dict[num, default: 0] += 1
 }
 return false
 }
 }
  */

// MARK: - Valid Anagram
/*
class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var dict: Dictionary<Character, Int> = [:]

        for char in s {
            dict[char, default: 0] += 1
        }

        for char2 in t {
            if let count = dict[char2], count >= 1 {
                dict[char2]! -= 1
                } else {
                return false
                }
            }
            return true
        }
    }
*/

// MARK: -Two Sum
/*
 class Solution {
 func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
 var dict: Dictionary<Int, Int> = [:]
 
 for (index, num) in nums.enumerated() {
 let complement = target - num
 if let complementIndex = dict[complement] {
 return [index, complementIndex]
 }
 dict[num] = index
 }
 return[0]
 }
 }
 */


// MARK: -Group Anagrams

//class Solution {
//    func groupAnagrams(_ strs: [String]) -> [[String]] {
//        var dict: Dictionary<String, [String]> = [:]
//
//        for string in strs {
//            let orderedString = String(string.sorted())
//
//            if var group = dict[orderedString] {
//                group.append(string)
//                dict[orderedString] = group
//            } else {
//                dict[orderedString] = [string]
//            }
//        }
//        return Array(dict.values)
//    }
//}


// MARK: -Group Anagram prime number solution

//class Solution {
//    func groupAnagrams(_ strs: [String]) -> [[String]] {
//        let primes: [Character: Int] = [
//            "a": 2, "b": 3, "c": 5, "d": 7, "e": 11, "f": 13, "g": 17, "h": 19, "i": 23,
//            "j": 29, "k": 31, "l": 37,
//            "m": 41, "n": 43, "o": 47, "p": 53, "q": 59, "r": 61, "s": 67, "t": 71,
//            "u": 73, "v": 79, "w": 83, "x": 89,
//            "y": 97, "z": 101
//        ]
//
//        var dict: Dictionary<Int, [String]> = [:]
//
//        for str in strs {
//            var hash = 1
//
//            for char in str {
//                if let prime = primes[char] {
//                    hash *= prime
//                }
//            }
//
//            if var exist = dict[hash] {
//                exist.append(str)
//                dict[hash] = exist
//            } else {
//                dict[hash] = [str]
//            }
//        }
//        return Array(dict.values)
//    }
//}
//
// MARK: -Group Anagram ascii value solution

//class Solution {
//    func groupAnagrams(_ strs: [String]) -> [[String]] {
//        var dict: Dictionary<[Int], [String]> = [:]
//
//        for str in strs {
//            var count: [Int] = Array(repeating: 0, count: 26)
//          
//            for char in str {
//              let index = Int(char.asciiValue! - Character("a").asciiValue!)
//              count[index] += 1
//          }
//        
//        if var group = dict[count] {
//            group.append(str)
//            dict[count] = group
//        } else {
//            dict[count] = [str]
//        }
//      }
//      return Array(dict.values)
//    }
//}

// MARK: - Top K Frequent Elements

/*
 class Solution {
 func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
 guard !nums.isEmpty else { return[] }
 
 var dict: Dictionary<Int, Int> = [:]
 var result: [Int] = []
 
 for num in nums {
 dict[num, default: 0] += 1
 }
 
 var bucket = Array(repeating: [Int](), count:  nums.count + 1)
 
 for (key, value) in dict {
 bucket[value].append(key)
 }
 
 for i in stride(from: bucket.count - 1, through: 0, by: -1) {
 result.append(contentsOf: bucket[i])
 if result.count == k {break}
 }
 
 return result
 }
 }
 */
// MARK: - Product of Array Except Self
// MARK: - With prefix and postfix

//func productExceptSelf(_ nums: [Int]) -> [Int] {
//    let n = nums.count
//    var prefix = Array(repeating: 1, count: n)
//    var postfix = Array(repeating: 1, count: n)
//    var answer = Array(repeating: 1, count: n)
//    
//    // Calculate prefix products
//    var leftProduct = 1
//    for i in 0..<n {
//        prefix[i] = leftProduct
//        leftProduct *= nums[i]
//    }
//    
//    // Calculate postfix products
//    var rightProduct = 1
//    for i in (0..<n).reversed() {
//        postfix[i] = rightProduct
//        rightProduct *= nums[i]
//    }
//    
//    // Calculate answer
//    for i in 0..<n {
//        answer[i] = prefix[i] * postfix[i]
//    }
//    
//    return answer
//}
//
//// Example usage:
//let nums = [1, 2, 3, 4]
//let result = productExceptSelf(nums)
//print(result) // Output: [24, 12, 8, 6]

// MARK: - Without prefix and postfix
//
//class Solution {
//    func productExceptSelf(_ nums: [Int]) -> [Int] {
//    var result = Array(repeating: 1, count: nums.count)
//    
//    var temp1 = 1
//    for i in 0..<nums.count {
//        result[i] *= temp1
//        temp1 *= nums[i]
//    }
//    
//    var temp2 = 1
//    for i in stride(from: nums.count - 1, through: 0, by: -1) {
//        result[i] *= temp2
//        temp2 *= nums[i]
//    }
//    return result
//    }
//}

// MARK: -Longest Consecutive Sequence

//class Solution {
//    func longestConsecutive(_ nums: [Int]) -> Int {
//        guard !nums.isEmpty else { return 0 }
//        var numSet: Set<Int> = Set(nums)
//        var longest = 0
//
//        for num in nums {
//            if !numSet.contains(num - 1) {
//                var length = 0
//
//                while numSet.contains(num + length) {
//                    length += 1
//                    longest = max(longest, length)
//                }
//            }
//        }
//        return longest
//    }
//}


// MARK: - Three sum problem
/*
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var sortedNums = nums.sorted()

        for i in 0..<sortedNums.count {
            if i > 0 && sortedNums[i] == sortedNums[i - 1] {
                continue
            }
            var right = sortedNums.count - 1
            var left = i + 1
            while left < right {
                var found = sortedNums[i] + sortedNums[left] + sortedNums[right]
                if found > 0 {
                    right -= 1
                } else if found < 0 {
                    left += 1
                } else {
                    result.append([sortedNums[i], sortedNums[left], sortedNums[right]])
                    left += 1
                    while sortedNums[left] == sortedNums[left - 1] && left < right {
                        left += 1
                    }
                }
            }
        }

    return result
    }
}
*/


// MARK: - 167. Two Sum II - Input Array Is Sorted

/*
class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1

        while left < right {
            var found = numbers[left] + numbers[right]
            if found > target {
                right -= 1
            } else if found < target {
                left += 1
            }
            if found == target {
                return [left + 1, right + 1]
            }
        }
        return [left + 1, right + 1]
    }
}
*/

// MARK: -121. Best Time to Buy and Sell Stock

//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//        
//        var left = 0
//        var right = 1
//        var result = 0
//
//        while right < prices.count {
//           result = max(prices[right] - prices[left], result)
//
//           if prices[left] > prices[right] {
//               left = right
//           }
//           right += 1
//        }
//
//        return result
//    }
//}


// MARK: -Longest Substring Without Repeating Characters
//
//class Solution {
//    func lengthOfLongestSubstring(_ s: String) -> Int {
//        guard !s.isEmpty else { return 0 }
//
//        if s.count == 1 {
//            return 1
//        }
//
//        var str = Array(s)
//        var left = 0
//        var right = 0
//        var result: Set<Character> = []
//        var maxNum = 0
//
//        while right != str.count {
//
//            if !result.contains(str[right]) {
//                result.insert(str[right])
//                maxNum = max(maxNum, result.count)
//                right += 1
//            } else {
//                result.remove(str[left])
//                left += 1
//            }
//        }
//
//        return maxNum
//    }
//}



// MARK: - Longest Repeating Character Replacement

//class Solution {
//    func characterReplacement(_ s: String, _ k: Int) -> Int {
//        var count: [Character: Int] = [:]
//        var l = 0
//        var maxFrequency = 0
//        let chars = Array(s)
//        var maxLength = 0
//        
//        for r in 0..<chars.count {
//            count[chars[r], default: 0] += 1
//            maxFrequency = max(maxFrequency, count[chars[r]]!)
//            
//            if (r - l + 1) - maxFrequency > k { //(r - l + 1) LEGTH OF THE SLIDING WINDOW!
//                count[chars[l]]! -= 1
//                l += 1
//            }
//            
//            maxLength = max(maxLength, r - l + 1)
//        }
//        
//        return maxLength
//    }
//}
//
//// Example usage:
//let solution = Solution()
//print(solution.characterReplacement("ABAB", 2)) // Output: 4
//print(solution.characterReplacement("AABABBA", 1)) // Output: 4


// MARK: -Practice

//class Solution {
//    func characterReplacement(_ s: String, _ k: Int) -> Int {
//       guard !s.isEmpty else { return 0 }
//
//       let arr = Array(s)
//       var countDict: Dictionary<Character, Int> = [:]
//       var maxCount = 0
//       var result = 0
//       var left = 0
//
//       for right in 0..<arr.count {
//           countDict[arr[right], default: 0] += 1
//            maxCount = max(maxCount, countDict[arr[right]]!)
//
//            if (right - left + 1) - maxCount > k {
//                countDict[arr[left]]! -= 1
//                left += 1
//            }
//
//            result = max(result, right - left + 1)
//
//       }
//
//        return result
//    }
//}


// MARK: -Minimum Window Substring (HARD!)

//class Solution {
//    func minWindow(_ s: String, _ t: String) -> String {
//        guard !s.isEmpty else { return "" }
//
//        var window: Dictionary<Character, Int> = [:]
//        var countS: Dictionary<Character, Int> = [:]
//
//        for char in t {
//            countS[char, default: 0] += 1
//        }
//
//        var left = 0
//        let sArray = Array(s)
//        var res = (-1, -1)
//        var resLen = Int.max
//        var have = 0
//        var need = countS.count
//
//        for right in 0..<sArray.count {
//            let char = sArray[right]
//            window[char, default: 0] += 1
//            
//            if let targetCount = countS[char], targetCount == window[char]{
//                have += 1
//            }
//
//            while have == need {
//                if (right - left + 1) < resLen {
//                    res = (left, right)
//                    resLen = (right - left + 1)
//                }
//                window[sArray[left]]! -= 1
//
//                if let targetCount = countS[sArray[left]], targetCount > window[sArray[left]]! {
//                    have -= 1
//                }
//                left += 1
//            }
//        }
//    let (l, r) = res
//    return resLen != Int.max ? String(sArray[l...r]) : ""
//    }
//}
//
//                // ADOBECODEBANC.   ABC
//                

// MARK: -Encode and Decode

//class Codec {
//    func encoded(_ strs: [String]) -> String {
//        var result = ""
//        for str in strs {
//            result = result + "\(str.count)#" + str
//        }
//        return result
//    }
//    
//    func decoded(str: String) -> [String] {
//        var result:[String] = []
//        var i = 0
//        let strArray = Array(str)
//        
//        while i < str.count {
//            var j = i
//            while strArray[j] != "#" {
//                j += 1
//            }
//            let length = Int(String(strArray[i..<j]))!
//            let start = j + 1
//            let end = j + length
//            let word = strArray[start..<end]
//            result.append(String(word))
//            i = end + 1
//        }
//        
//        return result
//    }
//    
//}
//
//let solution = Codec()
//let encoded = solution.encoded(["abc", "defg"])
//print(encoded)
//
//print(solution.decoded(str: "3#abc4#defg"))

// "5#stand6#Sit8#lkjdsf9#lkjfs6#kjfahdsf"

                
                
                


// MARK: -Merge sort practice. Sort array of Int in assending order.
//
//class Solution {
//    func sortArray(_ nums: [Int]) -> [Int] {
//        guard nums.count > 1 else { return nums }
//
//        let mid = nums.count / 2
//        let left = sortArray(Array(nums[0..<mid]))
//        let right = sortArray(Array(nums[mid..<nums.count]))
//
//        return merge(left, right)
//    }
//
//    private func merge(_ left: [Int], _ right: [Int]) -> [Int] {
//        var merged: [Int] = []
//        var i = 0, j = 0
//
//        while i < left.count && j < right.count {
//            if left[i] < right[j] {
//                merged.append(left[i])
//                i += 1
//            } else {
//                merged.append(right[j])
//                j += 1
//            }
//        }
//
//        while i < left.count {
//            merged.append(left[i])
//            i += 1
//        }
//
//        while j < right.count {
//            merged.append(right[j])
//            j += 1
//        }
//
//        return merged
//    }
//}
//
//// Test cases
//let solution = Solution()
//let input1 = [3, 2, 1, 4, 5]
//let output1 = solution.sortArray(input1)
//print("Sorted array: \(output1)")
//
//let input2 = [2, 3, 1]
//let output2 = solution.sortArray(input2)
//print("Sorted array: \(output2)")


// MARK: -Valid Parentheses

//class Solution {
//    func isValid(_ s: String) -> Bool {
//    var stack: [Character] = []
//    let mapping: [Character: Character] = [")": "(", "}": "{", "]": "["]
//
//    for char in s {
//        if let openBracket = mapping[char], let last = stack.last, openBracket != last {
////            "("
//            return false
//        } else {
//            stack.append(char)
//        }
//    }
//
//    return true
//    }
//}
//    
//
//let s = "()[]{}"
//
////
///


// MARK: -Valid Parentheses Practice

//class Solution {
//    func isValid(_ s: String) -> Bool {
//        var stack: [Character] = []
//        let mapping: [Character: Character] = [")": "(", "}": "{", "]": "["]
//        
//        for char in s {
//            //  "(" ")"
//            if let openBracket = mapping[char] {
//                if stack.isEmpty || openBracket != stack.last {return false}
//
//                stack.removeLast()
//            } else {
//                stack.append(char)
//            }
//        }
//        return stack.isEmpty
//    }
//}


// MARK: -Binary search practice

//class Solution {
//    func findMin(_ nums: [Int]) -> Int {
//        var left = 0
//        var right = nums.count - 1
//
//        while left < right {
//            let mid = (right + left) / 2
//
//            if nums[mid] > nums[right] {
//                left += 1
//            } else {
//                right -= 1
//            }
//        }
//
//        return nums[left]
//    }
//}

// MARK: -Binary search practice

//class Solution {
//    func search(_ nums: [Int], _ target: Int) -> Int {
//        guard nums.count > 1 else {
//            return nums.isEmpty || nums[0] != target ? -1 : 0
//        }
//
//        var left = 0
//        var right = nums.count - 1
//
//        while left <= right {
//            let mid = left + (right - left) / 2
//            if nums[mid] == target {
//                return mid
//            }
//
//            // Determine if the left half is sorted
//            if nums[left] <= nums[mid] {
//                // Check if target is in the left half
//                if nums[left] <= target && target < nums[mid] {
//                    right = mid - 1
//                } else {
//                    left = mid + 1
//                }
//            } else { // Otherwise, the right half must be sorted
//                // Check if target is in the right half
//                if nums[mid] < target && target <= nums[right] {
//                    left = mid + 1
//                } else {
//                    right = mid - 1
//                }
//            }
//        }
//        return -1
//    }
//}

// MARK: -Binary search practice

//class Solution {
//    func search(_ nums: [Int], _ target: Int) -> Int {
//
//        var left = 0
//        var right = nums.count - 1
//
//        while left <= right {
//            var mid = left + (right - left) / 2
//            if nums[mid] == target {
//                return mid
//            }
//            print("left: \(left), mid: \(mid), right: \(right),nums[left]: \(nums[left]), nums[mid]: \(nums[mid]), nums[right]: \(nums[right])")
//            if nums[left] <= nums[mid] {
//                if nums[left] <= target, nums[mid] > target {
//                    right = mid - 1
//                } else {
//                    left = mid + 1
//                }
//            } else {
//                if nums[mid] < target, nums[right] >= target {
//                    left = mid + 1
//                } else {
//                    right = mid - 1
//                }
//            }
//        }
//        return -1
//    }
//}


// MARK: -Reverce Linked list practice. Practice

//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        var headList = head
//        var prev: ListNode? = nil
//        var next: ListNode? = nil
//
//        while headList != nil {
//            // var current = ListNode?
//            next = headList?.next
//            headList?.next = prev
//            prev = headList
//            headList = next
//        }
//        return prev
//    }
//}

// MARK: -Reverse Linked list Recursion
//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        guard head != nil && head?.next != nil else {return head}
//        
//        let newHead = reverseList(head?.next)
//        head?.next?.next = head
//        head?.next = nil
//
//        return newHead
//    }
//}

// MARK: -Merge two linked lists into one

//class Solution {
//       func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
//           let head = ListNode(0)
//           var result = head
//           var firstL = list1
//           var secondL = list2
//
//           while firstL != nil && secondL != nil {
//               if let firstVal = firstL?.val, let secondVal = secondL?.val {
//                   if firstVal < secondVal {
//                       result.next = firstL
//                       firstL = firstL?.next
//                   } else {
//                       result.next = secondL
//                       secondL = secondL?.next
//                   }
//                   result = result.next!
//                   print(result.val)
//               }
//           }
//
//           if firstL != nil {
//               result.next = firstL
//           } else if secondL != nil {
//               result.next = secondL
//           }
//           return head.next
//       }
//   }
//   /*
//       1 -> 2 -> 4
//       1 -> 3 -> 4
//
//       1 -> 2 -> 4
//       1 -> 3 -> 4 -> 5 -> 6
//
//   */

// MARK: -Reorder List


//class Solution {
//    func reorderList(_ head: ListNode?) {
//        var slow = head
//        var fast = head
//
//        while fast?.next != nil && slow?.next != nil {
//            slow = slow?.next
//            fast = fast?.next?.next
//        }
//
//        var curr = slow
//        var prev: ListNode? = nil
//        var temp: ListNode? = nil
//        while curr != nil {
//            temp = curr?.next
//            curr?.next = prev
//            prev = curr
//            curr = temp
//        }
//
//        var first = head
//        var second = prev
//        while second?.next != nil {
//            var tempFirst = first?.next
//            var tempSecond = second?.next
//            
//            first?.next = second
//            first = tempFirst
//
//            second?.next = first
//            second = tempSecond
//        }
//    }
//}

// MARK: -Remove Nth Node From End of List (My solution)

//class Solution {
//    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
//        if head == nil {
//            return nil
//        }
//        var list = head
//        var count = 0
//
//        while list != nil {
//            print(list?.val)
//            count += 1
//            list = list?.next
//        }
//        print("count", count)
//        if n == count {
//            return head?.next
//        }
//
//        var headStart = head
//        for _ in 0..<(count - n - 1) {
//            print(("count - n - 1", count - n - 1))
//            headStart = headStart?.next
//        }
//        headStart?.next = headStart?.next?.next
//        return head
//
//    }
//}

// MARK: -Remove Nth Node From End of List (Practice)

//class Solution {
//    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
//        guard head?.next != nil else { return nil }
//
//        let dummy = ListNode(0, head)
//        var leftList: ListNode? = dummy
//        var rightList = head
//        var count = 0
//
//        while count < n {
//            rightList = rightList?.next
//            count += 1
//        }
//
//        while rightList != nil {
//            leftList = leftList?.next
//            rightList = rightList?.next
//        }
//
//        leftList?.next = leftList?.next?.next
//
//        return dummy.next
//    }
//}

// Linked List Cycle

//class Solution {
//    func hasCycle(_ head: ListNode?) -> Bool {
//        var left = head
//        var right = head
//
//        while right != nil, right?.next != nil {
//            left = left?.next
//            right = right?.next?.next
//            if left === right {
//                return true
//            }
//        }
//        return false
//    }
//}


// Merge k Sorted Lists (Introduction)

//class Solution {
//    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
//        guard !lists.isEmpty else {
//            return nil
//        }
//
//        var lists = lists
//
//        while lists.count > 1 {
//            var mergedLists: [ListNode?] = []
//
//            for i in stride(from: 0, to: lists.count, by: 2) {
//                let l1 = lists[i]
//                let l2 = (i + 1) < lists.count ? lists[i + 1] : nil
//                mergedLists.append(mergeList(l1, l2))
//            }
//            lists = mergedLists
//        }
//
//        return lists[0]
//    }
//
//    private func mergeList(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        let dummy = ListNode()
//        var tail = dummy
//        var l1 = l1
//        var l2 = l2
//
//        while l1 != nil && l2 != nil {
//            if let val1 = l1?.val, let val2 = l2?.val {
//                if val1 < val2 {
//                    tail.next = l1
//                    l1 = l1?.next
//                } else {
//                    tail.next = l2
//                    l2 = l2?.next
//                }
//            }
//            tail = tail.next!
//        }
//
//        if l1 != nil {
//            tail.next = l1
//        }
//
//        if l2 != nil {
//            tail.next = l2
//        }
//
//        return dummy.next
//    }
//}
//
//// Helper function to create a linked list from an array
//func createLinkedList(_ elements: [Int]) -> ListNode? {
//    guard !elements.isEmpty else { return nil }
//    let head = ListNode(elements[0])
//    var current = head
//    for value in elements.dropFirst() {
//        current.next = ListNode(value)
//        current = current.next!
//    }
//    return head
//}
//
//// Example usage
//let list1 = createLinkedList([1, 4, 5])
//let list2 = createLinkedList([1, 3, 4])
//let list3 = createLinkedList([2, 6])
//let lists = [list1, list2, list3]
//
//let solution = Solution()
//if let mergedList = solution.mergeKLists(lists) {
//    var current: ListNode? = mergedList
//    while current != nil {
//        print(current!.val, terminator: " ")
//        current = current!.next
//    }
//    // Output: 1 1 2 3 4 4 5 6
//} else {
//    print("The merged list is empty.")
//}

// Merge k Sorted Lists (Practice)

//class Solution {
//    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
//        var lists = lists
//
//        while lists.count > 1 {
//            var tempArray: [ListNode?] = []
//            for i in stride(from: 0, to: lists.count, by: 2) {
//                let lh = lists[i]
//                let rh = (i + 1) < lists.count ? lists[i + 1] : nil
//                tempArray.append(mergeList(lh, rh))
//            }
//            lists = tempArray
//        }
//        return lists.first ?? nil
//    }
//
//    private func mergeList(_ lh: ListNode?, _ rh: ListNode?) -> ListNode? {
//        let dummy = ListNode(0)
//        var tail = dummy
//        var lh = lh
//        var rh = rh
//
//        while lh != nil, rh != nil {
//            if let val1 = lh?.val, let val2 = rh?.val {
//                if val1 < val2 {
//                    tail.next = lh
//                    lh = lh?.next
//                } else {
//                    tail.next = rh
//                    rh = rh?.next
//                }
//            }
//            tail = tail.next!
//        }
//
//        if lh != nil {
//            tail.next = lh
//        } else if rh != nil {
//            tail.next = rh
//        }
//        return dummy.next
//    }
//}


// Invert Binary Tree

//class Solution {
//    func invertTree(_ root: TreeNode?) -> TreeNode? {
//        guard root != nil else {
//            print("What")
//            return nil
//        }
//        
//        var temp: TreeNode? = TreeNode()
//        temp = root?.right
//        root?.right = root?.left
//        root?.left = temp
//        print(root)
//        invertTree(root?.left)
//        invertTree(root?.right)
//
//        return root
//    }
//}

//MARK: -Maximum Depth of Binary Tree

//class Solution {
//    func maxDepth(_ root: TreeNode?) -> Int {
//        return getDepth(1, root)
//    }
//    private func getDepth(_ i: Int, _ node: TreeNode?) -> Int {
//        guard node != nil else {return i - 1}
//
//        let left = getDepth(i + 1, node?.left)
//        let right = getDepth(i + 1, node?.right)
//
//        return max(left, right)
//    }
//}



// MARK: -Same Tree


//
//class Solution {
//    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
//        if p == nil && q == nil {
//            return true
//        }
//        if p?.val != q?.val {
//            return false
//        }
//        if p == nil || q == nil {
//            return false
//        }
//        return (isSameTree(p?.left, q?.left) &&
//        isSameTree(p?.right, q?.right))
//        
//    }
//}


// MARK: -Invert tree (Practice)

//class Solution {
//    func invertTree(_ root: TreeNode?) -> TreeNode? {
//        return invert(root)
//    }
//
//    func invert(_ root: TreeNode?) -> TreeNode? {
//        guard root != nil else { return nil }
//
//        var temp: TreeNode? = TreeNode(0)
//        temp = root?.left
//        root?.left = root?.right
//        root?.right = temp
//        invert(root?.left)
//        invert(root?.right)
//
//        return root
//    }
//}


//MARK: -Maximum Depth of Binary Tree

//class Solution {
//    func maxDepth(_ root: TreeNode?) -> Int {
//        guard root != nil else {return 0}
//
//        let left = maxDepth(root?.left)
//        let right = maxDepth(root?.right)
//
//        return max(left, right) + 1
//    }
//}

  

//MARK: -Same Tree (Practice)

//class Solution {
//    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
//       if p?.val != q?.val{
//            return false }
//       if p == nil && q == nil {
//        return true
//       }
//       if p == nil || q == nil {
//        return false
//       }
//    return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
//    }
//}



// MARK: -Subtree of Another Tree

//class Solution {
//    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
//        guard root != nil else {return false}
//        guard subRoot != nil else {return true}
//
//        if isSameTree(root, subRoot) {
//            return true}
//        print(isSameTree(root, subRoot))
//        return isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
//    }
//    private func isSameTree(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
//        if root1 == nil && root2 == nil {return true}
//        if root1?.val != root2?.val {return false}
//        if root1 == nil || root2 == nil {return false}
//
//        return isSameTree(root1?.left, root2?.left) && isSameTree(root1?.right, root2?.right)
//    }
//}

// MARK: -Lowest Common Ancestor (LCA) of a Binary Search Tree (BST)

//
//class Solution {
//    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
//        var root = root
//        while root != nil {
//            guard let currentNode = root else {return nil}
//            guard  let pVal = p?.val, let qVal = q?.val else {return nil}
//            if qVal < currentNode.val && pVal < currentNode.val {
//                root = currentNode.left
//            } else if qVal > currentNode.val && pVal > currentNode.val {
//                } else {return root}
//        }
//        return nil
//    }
//}



// MARK: -Binary Tree Level Order Traversal

//class Solution {
//    func levelOrder(_ root: TreeNode?) -> [[Int]] {
//        var result = [[Int]]()
//        guard let root = root else { return result }
//        
//        var queue = [root]
//        
//        while !queue.isEmpty {
//            var level = [Int]()
//            let size = queue.count
//            
//            for _ in 0..<size {
//                let node = queue.removeFirst()
//                level.append(node.val)
//                
//                if let left = node.left {
//                    queue.append(left)
//                }
//                if let right = node.right {
//                    queue.append(right)
//                }
//            }
//            
//            result.append(level)
//        }
//        
//        return result
//    }
//}


// MARK: -Binary Tree Level Order Traversal (Pracrice using Breadth First Search)

//
//class Solution {
//    func levelOrder(_ root: TreeNode?) -> [[Int]] {
//        guard let root = root else { return [] }
//        var result = [[Int]]()
//
//        var queue = [root]
//
//        while !queue.isEmpty {
//            var level: [Int] = []
//
//            for _ in 0..<queue.count {
//                let node = queue.removeFirst()
//                level.append(node.val)
//
//                if let left = node.left {
//                    queue.append(left)
//                }
//                if let right = node.right {
//                    queue.append(right)
//                }
//            }
//            result.append(level)
//        }
//        return result
//    }
//}


// Validate Binary Search Tree

//
//class Solution {
//    func isValidBST(_ root: TreeNode?) -> Bool {
//        return isValidBST(root, lower: nil, upper: nil)
//    }
//    
//    private func isValidBST(_ node: TreeNode?, lower: Int?, upper: Int?) -> Bool {
//        guard let node = node else {
//            return true
//        }
//        
//        if let lower = lower, node.val <= lower {
//            return false
//        }
//        
//        if let upper = upper, node.val >= upper {
//            return false
//        }
//        
//        return isValidBST(node.left, lower: lower, upper: node.val) &&
//               isValidBST(node.right, lower: node.val, upper: upper)
//    }
//}


// MARK: -Validate Binary Search Tree. Depth First Searh (Pracrice)

//
//class Solution {
//    func isValidBST(_ root: TreeNode?) -> Bool {
//        isValid(root, nil, nil)
//    }
//    private func isValid(_ root: TreeNode?, _ min: Int?, _ max: Int?) -> Bool {
//        guard let root = root else { return true }
//
//        if let min = min, min >= root.val { return false }
//        if let max = max, max <= root.val { return false }
//
//        return isValid(root.left, min, root.val) && isValid(root.right, root.val, max)
//    }
//}


//MARK: Kth Smallest Element in a BST

//class Solution {
//    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
//        var k = k
//        var result: Int?
//
//        func inorder(_ node: TreeNode?) {
//            guard let node = node else { return }
//
//            inorder(node.left)
//            
//            k -= 1
//            if k == 0 {
//                result = node.val
//                return
//            }
//            
//            inorder(node.right)
//        }
//
//        inorder(root)
//        return result ?? -1
//    }
//}
//



//MARK: -Kth Smallest Element in a BST(Pracrice, Recursion)

//class Solution {
//    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
//        var k = k
//        var result = 0
//        var root = root
//
//        func findK(_ root: TreeNode?) {
//            print(root?.val ?? "nil")
//            guard let root = root else { return }
//
//            findK(root.left)
//
//            k -= 1
//            if k == 0 {
//                print(root.val)
//                 result = root.val
//                 return
//            }
//            findK(root.right)
//        }
//
//        findK(root)
//        return result
//    }
//}


// MARK: -Kth smallest element in BST (practice not a Recursive approach)


//class Solution {
//    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
//        guard let root = root else { return -1 }
//        var stack = [TreeNode]()
//        var k = k
//        var current: TreeNode? = root
//
//        while current != nil || !stack.isEmpty {
//            while let node = current {
//                stack.append(node)
//                current = node.left
//            }
//            current = stack.removeLast()
//            k -= 1
//            if k == 0 {
//                return current!.val
//            }
//            current = current?.right
//        }
//        return -1
//    }
//}

// MARK: -Invert Binary Tree (Recursion practice, Preorder Traversal)

//class Solution {
//    func invertTree(_ root: TreeNode?) -> TreeNode? {
//        guard root != nil else { return nil }
//        
//        var temp: TreeNode? = root
//        temp = root?.left
//        root?.left = root?.right
//        root?.right = temp
//        invertTree(root?.left)
//        invertTree(root?.right)
//        return root
//    }
//}


// MARK: -MaxDepth of binary tree (Practice Recursion)

//class Solution {
//func maxDepth(_ root: TreeNode?) -> Int {
//   guard let root = root else { return 0 }
//   
//    return max(maxDepth(root.left), maxDepth(root.right)) + 1
//}
//}


// MARK: -MaxDepth of BST (Practice Beadth First Search)

//class Solution {
//    func maxDepth(_ root: TreeNode?) -> Int {
//        guard let root = root else { return 0 }
//    
//        var count = 0
//        var queue = [root]
//
//        while !queue.isEmpty {
//            for _ in 0..<queue.count {
//                let node = queue.removeFirst()
//
//                if let left = node.left {
//                    queue.append(left)
//                }
//                if let right = node.right {
//                    queue.append(right)
//                }
//            }
//            count += 1
//        }
//        return count
//    }
//}
//


// MARK: -MaxDepth of BST (Practice DFS, Iterative using tuped stack)

//class Solution {
//    func maxDepth(_ root: TreeNode?) -> Int {
//        var stack = [(node: root, depth: 1)]
//        var result = 0
//
//        while !stack.isEmpty {
//            let (node, depth) = stack.removeLast()
//            if let node = node {
//                result = max(result, depth)
//
//                stack.append((node.left, depth + 1))
//                stack.append((node.right, depth + 1))
//            }
//        }
//
//        return result
//    }
//}
