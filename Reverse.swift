//  ReverseString.swift
//
//  Created by Malcolm Tompkins
//  Created on 2021-12-06
//  Version 1.0
//
//  This program reverses a user-inputted string.
//
import Foundation

// Reverses an inputted string via recursion
func reverse(inputString: String) -> String {

    if inputString.count == 0 {
        return inputString
    } else {
        let range = inputString
            .index(after: inputString.startIndex)..<inputString.endIndex
        return reverse(inputString: String(inputString[range]))
            + inputString.prefix(1)
    }
}

// Captures user input, feeds it to reverse() and outputs the reversed string
print("Enter a string: ", terminator: "")
let inputString = readLine()
let reversedString = reverse(inputString: inputString!)
print(reversedString)

print("\nDone.")
