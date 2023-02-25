// Switch operator

var age = 25

switch age {
case 0...18:
    print("too young")
case 19...28:
    print("is ok"); fallthrough
case 29...50:
    print("quite allright")
case 60, 70, 80:
    print("Anniversary")
default:
    print("age is not relevant")
}
print("___________________________")

var name = "Kat"
switch name {
case "Katya" where age > 30:
    print("Hello, Darling!")
case "Katya" where age <= 30:
    print("I don't know you")
default:
    print("It's not my name")
}

var optional: Int? = 6
if let optional = optional {
    print("\(optional) != nil")
}

let tuple = (name, age)
switch tuple {
case ("Katya", 20): print("you are so young and beautiful")
case ("Katya", 36): print("Nice age")
case ("Katya", _): print("All ages are nice")
case (_, let age) where age >= 20 && age <= 30: print("You are such a hot thing!")
default: break
}


let point = (5, -7)
switch point {
    
case let (x, y) where x == y:
    print("x = y")
case let (x, y) where x == -y:
    print("x = -y")
case (_, let y) where y < 0:        //wildcard
    print("y < 0")
default: break
}


let array:[CustomStringConvertible] = [5, 5.4, Float(5.4)]
switch array[1] {
case _ as Int: print("Int")
case _ as Float: print("Float")
case _ as Double: print("Double")
default: break
}

print("_____________________")

// Task 1. Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.


var myText = """
 Hello, my sweet Lady! left me? It'so hard to breathe without you next to me...
call me 1234567890
"""

func countVowelsConsonantsMarks(sentence: String) -> (Int, Int, Int, Int) {
    
    
    let sentenceLowercase = sentence.lowercased()
    var tuple = (vowels: 0, consonants: 0, marks: 0, digits: 0)
    //var digits = 0
    
    
    for char in sentenceLowercase {
        
        switch char {
        case "a", "e", "i", "o", "u": tuple.0 += 1
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "t", "v", "w", "x","y","z": tuple.1 += 1
        case ",", "!", "?", ".": tuple.2 += 1
        case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0": tuple.3 += 1
        default: break
        }
    }
    return (tuple.0, tuple.1, tuple.2, tuple.3)
}

var myResult = countVowelsConsonantsMarks(sentence: myText)
print(myResult)
var myResult1 = countVowelsConsonantsMarks(sentence: "1. how are you?")
print(myResult1)
    
print("_______________________________")
    
    
// Task 2. Создайте свитч который принимает возраст человека и выводит описание жизненного этапа

var age1 = 91

switch age1 {
case 0..<18: print("child")
case 18...30: print("youngster")
case 31..<55: print("adult")
case 55: print("still hot")
case 91: print("she's gone")
default: print("no data")
    }

print("____________________________")

//Task 3. У вас есть имя отчество и фамилия студента (3 строки). в свитче сделать следующее - если имя начинается с А или О, то обращайтесь к студенту по имени,  если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии. В противном случае обращайтесь к нему по полному имени.

let myName = "Екатерина"
let mySurname = "Волобуева"
let myFatherMiddleName = "Викторовна"

let tupleForMyName = (mySurname, myName, myFatherMiddleName)

switch tupleForMyName {
    case (_, let myNameSymbol, _) where myNameSymbol.first == "А" || myNameSymbol.first == "О":
    print(myName)
case (_, _, let myFatherMiddleNameSymbol) where myFatherMiddleNameSymbol.first == "В" || myFatherMiddleNameSymbol.first == "Д": print(myName, myFatherMiddleName)
case (let mySurnameSymbol, _, _) where mySurnameSymbol.first == "Е" || mySurnameSymbol.first == "З":
    print(mySurname, myName, myFatherMiddleName)
    
default:break
}
print("________________________________________")
//Task 4. Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл  Point (x,y) с координатой и возвращает одно из значений: мимо, ранил, убил.

var shipPoint = (x: "a", y: 2 )
switch shipPoint {
case ("d", 1): print("hit and sunk")
case ("c", 1...3): print("hit and sunk")
case ("a", 1...4): print("hit and sunk")
default: print("miss")
}
