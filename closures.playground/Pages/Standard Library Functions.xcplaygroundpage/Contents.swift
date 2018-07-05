// Standard Library Functions
let values = [1, 2, 3, 4, 5]

var newArray = Array<Int>()

// Imperative approach -> result with a mutable result
for number in values {
    newArray.append(number * 2)
}

// Declarative approach -> result with an immutable result
let doubledNumbers = values.map { $0 * 2 }


// Map
extension Array {
    func customMap<T>(_ transform: (Element) -> T) -> [T] {
        var result = [T]()
        
        for x in self {
            result.append(transform(x))
        }
        
        return result
    }
}

let integerValues = ["1", "2", "3", "4", "5"].customMap { Int($0) }


import Foundation

struct Formatter {
    static let formatter = DateFormatter()
    
    static func date(from string: String) -> Date? {
        formatter.dateFormat = "d MMM yyy"
        return formatter.date(from: string)
    }
}

let dateStrings = ["20 Oct 1978", "11 Jan 1947", "28 Mar 2002"]

let dates = dateStrings.customMap { Formatter.date(from: $0) }
//print(dates)


// Flat Map
struct Post {
    var content: String
    var tags: [String]
}

let blog: [Post] = [
    Post(content: "Hello, world", tags: ["first", "programming"]),
    Post(content: "Just another short post", tags: ["general"])
]

let tags = blog.flatMap { $0.tags }

extension Array {
    func customFlatMap<T>(_ transform: (Element) -> [T]) -> [T] {
        var result = [T]()
        
        for x in self {
            result.append(contentsOf: transform(x))
        }
        
        return result
    }
}

struct Account {
    let username: String
    let billingAddress: String?
}

let allUsers = [
    Account(username: "pasanpr", billingAddress: nil),
    Account(username: "benjakuben", billingAddress: "1234, baker street"),
    Account(username: "instantNadel", billingAddress: "2345, from nowwhere"),
    Account(username: "sketchings", billingAddress: nil),
    Account(username: "paradoxed", billingAddress: "1122 Nope Land")
]

let validAddresses = allUsers.flatMap { $0.billingAddress }


















