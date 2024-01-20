import Foundation    // Lektion nr 3

// Constant. The value can not change.
let someConstant: Bool = true

// Variable. The value can change.
var someVariable: Bool = true
    someVariable = false

var myNumber = 1.1234
    myNumber = 2
    myNumber = 23456
    myNumber = 1
    myNumber = 458

// IF STATEMENTS
var userIsPremium: Bool = true

if userIsPremium == true {
    print("1 - user is premium")
} else {
    print("1.1 user is NOT premium")
}
// This works the same way as the above. The if checks if its true
if userIsPremium {
    print("2 - user is premium")
}
if userIsPremium == false {
    print("3 - user is NOT premium")
}
// This works the same way as above. It checks if its not true/false.
if !userIsPremium {
    print("4 - user is NOT premium.")
}

