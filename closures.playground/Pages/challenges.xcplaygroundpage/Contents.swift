
/*
 * 1.1
 * Write a function named addTwo that accepts an Int, adds the value 2 to it and returns the resulting integer. Name the external argument label to.
 * Note: This task doesn't require that you call the function yet.
 *
 * 1.2
 * Assign the addTwo function we just created to a constant named addition.
 * Call the function using the constant and pass in an argument. Assign the resulting value to a constant named result.
 */

func addTwo(to: Int) -> Int {
    return to + 2
}

let addition = addTwo
let result = addition(2)
