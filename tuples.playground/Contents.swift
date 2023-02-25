// Tuples

let simpleTuple = (1, "hello", true, 2.4)

let (number, greetings, check, decimal) = simpleTuple

number
greetings
check
decimal




let ( _, check2, _,_) = simpleTuple
check2



simpleTuple.0
simpleTuple.1
simpleTuple.2
simpleTuple.3

var tuple = (index:1, phrase: "hello", registered:true, latency:2.4)
tuple.1
tuple.0
tuple.2
tuple.3
tuple.index
tuple.phrase
tuple.registered
tuple.latency

tuple.index = 2
tuple.index

/*
 var a = (x:1, y:2)
 var b = (x:2, y:3)
 a = b
 */

/*
let redColor = "red"
let greenColor = "green"
let blueColor = "blue"
*/
let (red, green, blue) = ("red", "green", "blue")
red
green
blue


//Task 1...

var myResults = (maxPushups: 30, maxLiftups: 5, maxSitdowns: 100)
print(myResults.maxPushups, myResults.maxLiftups, myResults.maxSitdowns)
print(myResults.0)
print(myResults.1)
print(myResults.2)
print("maxPushups: 30\nmaxLiftups: 5\nmaxSitdowns: 100")


var hisResults = (maxPushups: 1, maxLiftups: 2, maxSitdowns: 3)
var c = myResults
myResults = hisResults
hisResults = c

hisResults.0 - myResults.0
hisResults.1 - myResults.1
hisResults.2 - myResults.2
print("Он отжимается больше меня на \(hisResults.0 - myResults.0) раз")
print("Он подтягивается больше меня на \(hisResults.1 - myResults.1) раза")
print("Он приседает больше меня на \(hisResults.2 - myResults.2) раз")
