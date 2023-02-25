import UIKit

//let dic1 : [Int:String] = [0 : "mama", 1 : "papa"]

//let dict2 : Dictionary<String, Double> = ["papa" : 30.0]

let dic1 = [0 : "mama", 1: "papa"]
let aaa = ["mama" : "Tanya", "papa" : "Sergey"]

aaa["mama"]

dic1[0]

var dict = ["car" : "mercedes", "tel" : "iphone"]

dict.count

dict.isEmpty

var namesOfIntegers = [Int : String]()


namesOfIntegers.count

namesOfIntegers.isEmpty

dict["mama"] = "Nina"

dict

dict.keys
dict.values

dict.updateValue("Vladimir", forKey: "papa")
dict

//dict["car"] = nil
dict

//dict.removeValue(forKey: "car")
//dict
//dict = [:]
//dict
for key in dict.keys {
    print("key = \(key), value = \(dict[key]!)")
}
for (key, value) in dict {
    print("key = \(key), value = \(value)")
}

//func minMax(array: [Int]) -> (min: Int, max: Int) {
//    var currentMin = array[0]
//    var currentMax = array[0]
//    for value in array[1..<array.count] {
//        if value < currentMin {
//            currentMin = value
//        } else if value > currentMax {
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//let result = minMax(array: [5, 9, 8, 10])
//result

var array = [10,3,6,7]
var currentMin = array[0]
var currentMax = array[0]
for value in array[1..<array.count] {
    if value < currentMax {
        print("currentMax = \(currentMax)")
    }
}


var score = 2.5
while score < 15.0 {
    score += 2.5
    print("jjj")
}

var page = 0
while page <= 5 {
    page += 1
    print("kkk")
}
