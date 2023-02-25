var dict = ["машина": "car", "мужик": "man"]

dict["мужик"]
dict.count
dict.isEmpty
dict["комп"] = "computer" //добавляем пару в словарь
dict.keys
dict.values
//dict["комп"] = "mac"
dict.updateValue("mac", forKey: "комп")
//let comp = dict["комп"]
if let comp = dict ["комп"] {
    print(comp)
} else {
    print("no value for key")
}
/*dict["мужик"] = nil
dict.removeValue(forKey: "мужик")
dict = [:]
dict.isEmpty
dict["hello"] = "World"
dict
 */
//iteration:
//for key in dict.keys {
//    print("key = \(key), value = \(dict[key]!)")
//}

for (key, value) in dict {
    print("key = \(key), value = \(value)")
}


// Homework

/* Задача 1.
 Создать словарь как журнал студентов, где ключ - это имя ифамилия студента, а значение - это оценка за контрольную. Сначала создать словарь с 5 студентами. Повысить 2 студентам оценки (update value), пришли еще 2 студентов, надо проверить их контрольную и добавить в этот журнал. Пара других студентов ушли - их надо вычеркнуть из журнала. Посчитать общий балл этой группы, то есть сумму всех оценок, и средний балл этой группы.
 */
 
 var studentsRecord = ["Ekaterina Volobueva": 5, "Dmitry Volobuev": 3, "Grigory Volobuev": 4, "Elena Larionova": 3, "Maria Zaitseva": 5]
 studentsRecord["Dmitry Volobuev"] = 4
 studentsRecord["Elena Larionova"] = 4
studentsRecord.updateValue(3, forKey: "Svetlana Zaitseva")
studentsRecord["Konstantin Zaitsev"] = 2
studentsRecord
studentsRecord["Ekaterina Volobueva"] = nil
studentsRecord.removeValue(forKey: "Dmitry Volobuev")

var sum = 0
for value in studentsRecord.values {
    sum += value
}
print("Общий балл этой группы - \(sum)")


var averageScore = Double(sum)/Double(studentsRecord.count)
print("Средний балл этой группы - \(averageScore)")
print("___________________________________________")

 /*
  Задача 2.
 Создать словарь "Дни в месяцах", где мeсяц - это ключ, а количество дней - это значение (String: Int). Вывести это на экран, но в первом случае нужно вывести ключ - значение попарно (использовать цикл и тюплы в нем), во втором случае надо использовать цикл, но прошлись по массиву ключей и для каждого массива ключа брать значение из этого словаря и выводить пару потом.
  */

let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
let days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30,31]

//for (month, day) in zip(months, days) {
//    print("\(month): \(day)")
//}

var calendar: [String: Int] = [:]
for i in 0..<months.count {
    calendar[months[i]] = days[i]
}
print(calendar)
print("_____________________________________________")

 /*
  Задача 3.
 Создать словарь, где ключ - это адрес ячейки шахмат(например, а1, а2...), это будет строка, а значение - Bool (true - если ячейка белая, false - если ячейка черная). (64 пары с ключом - адрес ячейки и значением, либо true, либо false). Не создавать 64 значения вручную. Использовать цикл в цикле, должен быть 1 массив - это буквы abcdefg... и в цикле нужно пройтись по нему, для каждой буквы должен быть другой цикл от 1 до 8 вкл и на основании этого в этих двух циклах создать строку, у которой первой идет буква, вторая идет цифра и это будет ключ и считали значение.
 */

var chessDict = [String: Bool]()
let chars = ["a", "b", "c", "d", "e", "f", "g", "h"]
var numbers  = [1, 2, 3, 4, 5, 6, 7, 8]

for (index, value) in chars.enumerated() {
    for j in numbers {
        if (index + j + 1) % 2 != 0 {
            chessDict["\(value)\(j)"] = true
        } else {
            chessDict["\(value)\(j)"] = false
        }
    }
}
print(chessDict)
