
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
//let result = addition(2)


/*
 * 2.1
 * In an extension to the String type, declare a function named transform. The function should accept as an argument another function of type (String) -> String. For this argument, let's omit the external label. The transform function should also return a String.
 *
 * 2.2
 * Create a function named removeVowels that takes a string and returns a string. Name the external argument label for the parameter from. In the body of the method, return a new String literal with the vowels (in the English language) removed from the value passed in as an argument.
 *
 * 2.3
 * On the string "Hello, World!", call the transform function and use the removeVowels(from:) function as an argument. Assign the result to a constant named result.
 */

extension String {
    func transform(_ argument: (String) -> String) -> String {
        return argument(self)
    }
}

func removeVowels(from string: String) -> String {
    var newString = ""
    for character in string.characters {
        if ["a","e","i","o","u"].contains(character) {
            continue
        }
        
        newString.append(character)
    }
    
    return newString
}
let result = "Hello, World!".transform(removeVowels)

