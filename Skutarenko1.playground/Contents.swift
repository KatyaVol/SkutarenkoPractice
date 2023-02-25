

// Task 1


print("Int8.min имеет значение \(Int8.min)")
print("Int8.max имеет значение \(Int8.max)")
print("UInt8.min имеет значение \(UInt8.min)")
print("UInt8.max имеет значение \(UInt8.max)")
print("Int.min имеет значение \(Int.min)")
print("Int.max имеет значение \(Int.max)")
print("__________________________________")

// Task 2

let a = 5
let b = 6.0
let c: Float = 6.0

let first = a + Int(b) + Int(c)
let second: Float = Float(a) + Float(b) + c
let third = Double(a) + b + Double(c)

// Task 3


if Double(first) < third {
    print("Double is greater")
} else if Double(first) == third {
    print("Double is equal")
} else {
    print("Int is greater")
}

