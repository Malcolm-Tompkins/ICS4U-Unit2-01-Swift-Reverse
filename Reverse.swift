/*Calculates the length of a board foot given a height and width.
* @author  Malcolm Tompkins
* @version 1.0
* @since 2020-11-27
*/

import Foundation

input()

// Function for input
func input() {
    print("Input your string to be converted: ")
    let userString = readLine()!
    let reversedString: String = calculateLength(userString: String)
    print("Your reversed string is: \(reversedString)")
    print("Done.")
}

// Function for calculations
func reverse(anyString: String) -> String {
    var returnValue: String = nil
    if anyString.count == 0 {
        returnValue = anyString
    } else {
        returnValue = reverse(anyString.last!) + anyString.prefix(1)
    }
}
