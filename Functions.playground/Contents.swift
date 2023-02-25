//: Functions.
//: DRY principle - do not repeat yourself.
//: Никогда не дублируйте свой код - выносите все в функции.
var wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]
func calculateMoney(Inwallet wallet:  [Int], withBanknote banknote: Int? = nil) -> (total: Int, count: Int) {
    var sum = 0
    var count = 0
    
    for value in wallet {
        if banknote == nil ||  value == banknote! {
            sum += value
            count += 1
        }
    }
  return (sum, count)
}
var (money, count) = calculateMoney(Inwallet: wallet, withBanknote: 5)
// можно написать без "banknote: nil", так как уже в функции есть  nil
calculateMoney(Inwallet: wallet, withBanknote: 100).count
money
count


func calculateMoney(inSequence range: Int...) -> Int {
    var sum = 0
    for value in range {
        sum += value
        
    }
    return sum
}
calculateMoney(inSequence: 5, 5, 10, 2, 3, 4, 3, 23, 34, 1)


func sayHi() {
    print("hi")
}
//sayHi()
//sayHi()

let hi = sayHi

func sayPhrase(_ phrase: String) -> Int? {
    print(phrase)
    return 0
}
sayPhrase("aaa")
let phrase /*: (String) -> (Int?) */ = sayPhrase
phrase("bbb")

func doSomething(_ whatToDo:() -> ()) {
    whatToDo()
}
doSomething(hi)


//:
//:
//Homework

//
//1. Создайте пару (2,3,4) функций с короткими именами, которые возвращают строку с классным символом или символами. Например heart() возвращает сердце и т.п. Вызовите все эти функции внутри принта для вывода строки этих символов путем конкатенации(сложение)

func earthGlobe() -> String {
    return "\u{1F30F}"
}
earthGlobe()

func volcano() -> String {
    return "\u{1F30B}"
}
volcano()

func statue() -> String {
    return "\u{1F5FD}"
}
statue()

func rock() -> String {
    return "\u{1FAA8}"
}
rock()

func wood() -> String {
    return "\u{1FAB5}"
}
wood()

func heart() -> String {
    return "\u{1F49D}"
}
heart()


print(earthGlobe() + volcano() + statue() + rock() + wood() + heart())



//2. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль let...=,
func blackOrWhite(_ letter: Character, _ symbol: Int) -> String {
    return "0"
}
//3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.

func reverseArray(_ array:[Int]) -> [Int] {

    var arrayReversed = [Int]()

    for i in  array {
        arrayReversed.insert(i, at: 0)
    }
    return array.reversed()
}
reverseArray([1, 2, 3, 90, 999])

func 

//4. Разберитесь с inout самостоятельно и выполните задание номер 3 так, чтобы функция не возвращала перевернутый массив, но меняла элементы в существующем. Что будет если убрать inout?

//5. Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)
