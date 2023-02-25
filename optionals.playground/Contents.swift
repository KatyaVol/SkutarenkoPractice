
// Домашнее задание
// задача 1
/* делаем 5 констант, строковые контсанты, одни состоят из цифр, другие из цифр и букв.
 Надо найти сумму всех этих констант, приведя их к Int.
 Некоторые константы переводить через опшнл баиндинг, а некоторые напрямую форс
 */

let myAge = "37"
let myHusbandAge = "47"
let myBabyAge = "2"
let myGrannyAge = "92rty"
let myGrandpaAge = "asdfdg"



var sumOfAges = 0

if Int(myAge) != nil {
    sumOfAges += Int(myAge)!
}
if Int(myHusbandAge) != nil {
    sumOfAges += Int(myHusbandAge)!
}
if Int (myBabyAge) != nil {
    sumOfAges += Int(myBabyAge)!
}

if let a = Int(myGrannyAge) {
    sumOfAges += a
}
if let b = Int(myGrandpaAge) {
    sumOfAges += b
}
sumOfAges



/* Задача 2
 мы получаем тюпл с сервера и он может прийти с 3 параметрами (статус код: Int, message: строка опциональная,  error message: String?
 условия - если ваш статус код находится в диапазоне от 200 до 300 исключительно, тогда вы должны показать message, если он в другом диапазоне, то вы должны показать Error message.
 После этого создать точно такой же тюпл, где статус кода нет. Задача - один из message содержит нил, а другой нет. Нужно разоббраться, что из них что содержит и показать соответствующую строку.
 */




var tuple1: (statusCode: Int, message: String?, errorMessage: String?)

tuple1.statusCode = 233
tuple1.message = "Hello, I'm here"
tuple1.errorMessage = nil

if tuple1.statusCode < 300 && tuple1.statusCode >= 200 {
    print(tuple1.message!)
} else {
    print(tuple1.errorMessage)
}

var tuple2: (message: String?, errorMessage: String?)
tuple2.message = "Eat me"
tuple2.errorMessage = nil

if let value = tuple2.message {
    print(value)
} else {
    print("error")
}
//:Задача 3.
//:Создать тюпл студента с 3 параметрами (имя, номер машины и оценка за предыдущую контрольную), все данные в тюплах должны быть нил, создать нужно 5 таких тюрлов для разных студентов. Потом заполнить имена этих студентов, потом  если у студента этого есть машина, то добавить номер машины в этот же тюпл, результат контрольной (он будет от 0 ддо 5), если результат был, то добавьте - даже нулевой. потом красиво вывести в консоль имя студента, какая машина, если есть, если нет, то напишите это, на какую оценку сдал предыдущую контрольную и был ли он на ней.
var tupleStudent1: (name: String?, machineNumber: Int?, score: Int?)
var tupleStudent2: (name: String, machineNumber: Int?, score: Int?)
var tupleStudent3: (name: String?, machineNumber: Int?, score: Int?)
var tupleStudent4: (name: String?, machineNumber: Int?, score: Int?)
var tupleStudent5: (name: String?, machineNumber: Int?, score: Int?)

tupleStudent1.name = "Anton"
tupleStudent2.name = "Ivan"
tupleStudent3.name = "Sergey"
tupleStudent4.name = "Alla"
tupleStudent5.name = "Anna"

tupleStudent1.machineNumber = Int("12")
tupleStudent2.machineNumber =  Int("nil")
tupleStudent3.machineNumber = Int("122")
tupleStudent4.machineNumber = Int("125")
tupleStudent5.machineNumber = nil

tupleStudent1.score = 2
tupleStudent2.score = 3
tupleStudent3.score = Int("nil")
tupleStudent4.score = 5
tupleStudent5.score = Int("nil")

print(tupleStudent2)
