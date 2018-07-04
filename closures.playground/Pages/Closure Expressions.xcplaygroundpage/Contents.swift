// Quick Recap
func double(_ value: Int) -> Int {
    return value * 2
}

let doubleFunction = double
doubleFunction(2)

let numbers = [1, 2, 3, 4]
let doubledNumbers = numbers.map(doubleFunction)


// Closure Expression Syntax

// Rule #1; Define the closure inline
let tripledNumbers = numbers.map({(value: Int) -> Int in
    return value * 3
})

// Rule #2: Inferring Type From Context
numbers.map({ value in return value * 3 })

// Rule #3: Implicit Returns from Single-Expression Closures
numbers.map({ value in value * 3 })




























