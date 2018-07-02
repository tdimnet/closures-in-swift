// Closures


// Functions as Data
func printString(_ string: String) {
    print("Printing the string passed in as an argument: \(string)")
}

printString("Hi, my name is Thomas")

let stringPinterFunction = printString
stringPinterFunction("Hi, look at me!")


func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let addTwoNumbers = sum
addTwoNumbers(1, 2)


































