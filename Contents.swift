import UIKit

var str = "Hello, playground"

func unique(_ inputString: String) -> Bool {
    var alphabets = Set<Character>()
    for char in inputString {
        let bool = alphabets.insert(char).inserted
        if bool == false {
            return false
        }
    }
    return true
}

assert(unique("Hello, World")==false,"Challenge 1 failed")

func challenge1(_ str: String) -> Bool {
    return Set(str).count == str.count
}

assert(challenge1("has")==true, "challenge 1 failed")

func isPalindrome(_ str: String) -> Bool {
    let strReversed = String(str.reversed())
    if str.caseInsensitiveCompare(strReversed) == ComparisonResult.orderedSame {
        return true
    } else {
        return false
    }
}

assert(isPalindrome("Hello, world")==false, "challenge 2 has failed B")


func challenge2(_ input: String) -> Bool {
    let lowercased = input.lowercased()
    return String(lowercased.reversed()) == lowercased
}

assert(challenge2("Hello, World")==false, "challenege 2 has indeed failed B")

func isSame(_ strA: String, _ strB: String) -> Bool {
    let arrA = Array(strA).sorted()
    let ArrB = Array(strB).sorted()
    
    return arrA.elementsEqual(ArrB)
}

//assert(isSame("abca", "abca")==true, "challenge 3.1 has failed")
//assert(isSame("abc", "cba")==true, "challenege 3.2 has failed")
//assert(isSame("a1 b2", "b1 a2")==true, "challenge 3.3 has failed")
assert(isSame("abc", "Abc")==false, "challenge 3.4 has failed")

func challenge3(_ strA: String, _ strB: String) -> Bool {
    return strA.sorted() == strB.sorted()
}

