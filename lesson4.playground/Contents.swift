//import UIKit
//
//var greeting = "Hello, playground"
//
//let constArray = [ "a", "b", "c", "d"]
//
//constArray.count
//
//var array = [String]()
//
//if array.count == 0 {
//    print("массив пустой")
//}
//if array.isEmpty {
//    print("array isEmpty")
//}
//
//array += constArray
//
//array += ["w"]
//
//array.append("mama")
//
//print(array)
//
//array [0]
//
//array [1]
//
//array[1...3]
//
//array[1..<4]
//
//array.insert("-3", at: 3)
//
//array.remove(at: 3)
//array.removeLast()
//array


func fizzBuzz(input: Int) -> String {
    var returnValue: String = "The result is "
    switch (input % 3 == 0, input % 5 == 0) {
    case (true, false): returnValue += "Fizz"
    case (false, true): returnValue += "Buzz"
    case (true, true): returnValue += "Fizzbuzz"
    case (false, false): returnValue += String(input)
    }
    return returnValue
}
print(fizzBuzz(input: 22))
