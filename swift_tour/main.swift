//
//  main.swift
//  swift_tour
//
//  Created by Eduardo Corona on 6/5/23.
//

import Foundation

print("Hello, World!")

// use `var` to make a variable and `let` to make a constant.
// constants must have a value assigned exactly once.

var myVariable = 42
myVariable = 50
let myConstant = 42

//explicit Type as follows:
let explicitDouble: Double = 70

//implicit Types below: (their type is assigned according to its value)
let implicitInteger = 70
let implicitDouble = 70.0

//Experiment:
let expConst: Float = 4.0

let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) total fruit."
print(fruitSummary)

let myName = "Eduardo"
let otherFloat = 32.5
print("\(myName) is \(otherFloat) years old." )

var quotation = """
                Even though there's white space right hurr,
                the lines are not indented.
                    Except for this one.
                Double quotes (") can appear without being escaped.
                I still have \(apples + oranges) pieces of fruit.
                """
print(quotation)

// arrays and dictionaries created using brackets []
// access their elements by writing the index or key in brackets.
// Commas are allowed after the last element

var fruits = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"

var occupations = [
    "Malcom": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

//print(occupations["Kaylee"])

fruits.append("blueberries")
print(fruits)

// Empty brackets to write arrays or dictionaries

fruits = []
occupations = [:]


//If you’re assigning an empty array or dictionary to a new variable, or another place where there isn’t any type information, you need to specify the type
let emptyArray: [String] = []
let emptyDictionary: [String:Float] = [:]

/* `if`, `switch` for conditionals
    `for-in`, `while`, `repeat-while` for loops
 Parentheses around condition or loop optional,
 braces required around the body. */

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil)
// You can use if and let together to work with values that might be missing. These values are represented as optionals. An optional value either contains a value or contains nil to indicate that a value is missing. Write a question mark (?) after the type of a value to mark the value as optional.
var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    if optionalName == nil {
        greeting = "Hello, un-named person!"
    }
}
print(greeting)

let nickName: String? = nil
let fullName: String = "Eduardo Corona"
let informalGreeting = "Hi \(nickName ?? fullName)"
print(informalGreeting)

if let nickName {
    print("Hey \(nickName)")
}
// Doesn't print anything, because nickname is nil.

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("That would make a good tea sandwhich.")
case "cucumber", "watercress":
    print("Whatever")
case let x where x.hasSuffix("pepper"):
    print("is it a spicy \(x)?")
default:
    print("Errthang tastes good in soup.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
