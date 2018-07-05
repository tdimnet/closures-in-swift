// Errors and Memory
extension Int {
    func apply(_ value: Int, operation: (Int, Int) throws -> Int) throws -> Int {
        return try operation(self, value)
    }
}

enum MathError: Error {
    case divideByZero
}

do {
    try 10.apply(0) {
        if $1 == 0 {
            throw MathError.divideByZero
        } else {
            return $0 / $1
        }
    }
} catch MathError.divideByZero {
    print("Error")
}




































