import Foundation

struct Student {
    var firstName: String {    //хранимое свойство
        willSet{
            print("will set " + newValue + " instead of " + firstName)
        }
        didSet{
            print("did set " + firstName + " instead of " + oldValue)
            firstName = firstName.capitalized
        }
    }
    
    var lastName: String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    
    var fullName: String {                    //computed property
        get {return firstName + " " + lastName}
        set {
            print("fullName wants to be set to " + newValue)
            
            let words = newValue.components(separatedBy: " ")
            
            if words.count > 0 {
                firstName = words[0]
            }
            if words.count > 1 {
                lastName = words[1]
            }
           
        }
    }
}

var student = Student(firstName: "Katya", lastName: "Volobueva")

student.firstName //stored property
student.lastName
student.fullName

student.firstName = "alla"

student.firstName
student.lastName
student.fullName

student.fullName = "IVAN IVanov"
student.firstName
student.lastName
student.fullName




struct Pupil {
    var firstName: String {
        willSet {
            print("will set " + newValue + " instead of " + firstName)
        }
        didSet {
            print("did set " + firstName + " instead of " + oldValue)
        }
    }
    
    var lastName: String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    
    var fullName: String {
        get {"\(firstName) \(lastName)"}
        set {
            let names = newValue.components(separatedBy: " ")
            firstName = names.dropLast().joined(separator: " ")
            lastName = names.last ?? ""
        }
    }

}
var pupil = Pupil(firstName: "Alex", lastName: "kostin")
pupil.firstName
pupil.lastName
pupil.fullName

pupil.firstName = "Sasha"
pupil.firstName

pupil.lastName = "Ko"
pupil.lastName
pupil.fullName

pupil.fullName = "Ira Alexandrova"
pupil.firstName
pupil.lastName



//для этого же студента добавить дату рождения (пусть будет еще одна структра, которая содержит день, месяц, год) и добавить property - дата рождения и еще computed propery - оно должно считать сколько студенту лет на основании даты рождения и еще одно computed property - оно должно считать сколько студент учился (количество лет - 7 лет например - потому что в 7 лет идем в школу впервые, но если студенту меньше чем 7 лет, то тогда нужно возращать 0, не надо ухлдить в минус
// создать структуру отрезок, у этой структуры будут 2 внутренние структуры - точки. то есть будет структура точки и структура отрезок. Структура отрезок содержит 2 точки - А и Б и это (stored property) и должны быть 2 computed properties (1 - это midpoint точка м/д двумя точками, мы должны ее посчитать математ.функциями и 2 computed property - это длина отрезкаю. Задание - если задать мидпоинт другой, то точка А и Б должны перенестись. То есть если хотим УСТАНОВИТЬ мидпоинт другой, то точки А и Б должны сдвинуться. И если УСТАНОВИТЬ новую длину отрезка, то точка а останется на месте, а точка Б сдвинется (точка Б сдвинется на разницу расстояний)
print("----------------")

struct DateOfBirth {
    var day: Int
    var month: Int
    var year: Int
    var date: Date? {
        let calendar = Calendar.current
        return calendar.date(from: DateComponents(year: year, month: month, day:day))
    }
}

var myDateOfBirth = DateOfBirth(day: 25, month: 05, year: 1990)
myDateOfBirth.date

struct NewStudent {
    var firstName: String {
        willSet {
            print("will set " + newValue + " instead of " + firstName)
        }
        didSet {
            print("did set " + firstName + " instead of " + oldValue)
        }
    }
    var lastName: String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    var fullName: String {
        get {"\(firstName) \(lastName)"}
        set { let names = newValue.components(separatedBy: " ")
            firstName = names.dropLast().joined(separator: " ")
            lastName = names.last ?? ""
        }
    }
    var dateOfBirth: DateOfBirth
    
    var age: Int? {
        if let date = dateOfBirth.date {
            let calendar = Calendar.current
            let currentComponent = calendar.dateComponents([.year], from: date, to: Date())
            return currentComponent.year
        }
        return nil;
    }
    
    var yearsOfStudy: Int {
            if age != nil && age! > 7 {
                return age! - 7;
            }
            return 0
    }
}

var newStudent = NewStudent(firstName: "Katerina", lastName: "Volobueva", dateOfBirth: DateOfBirth(day: 25, month: 05, year: 1990))
newStudent.firstName
newStudent.lastName
newStudent.fullName
newStudent.dateOfBirth.date
newStudent.age
newStudent.yearsOfStudy


