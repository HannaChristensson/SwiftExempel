import Foundation    // LEKTION NR 5

// FUNKTIONER: Only execute when we call the function. We call it with its name with paranthesis.

func myFirstFunction() {
    print("My first function called")
    mySecondFunction()
}
func mySecondFunction() {
    print("My second function called")
}
// Call the function
myFirstFunction()

// funktiondeklaration() -> return och vilken datatyp
func getUserName() -> String {
    // Denna konstant är skapad i denna funktion och nås inte utanför
     let username = "Hanna"
    return username
}
//Men här är den utanför och hela filen kommer åt den.
//let username = "Hanna"
//let name = username

//getUserName()

func checkIfUserIsPremium() -> Bool {
    return false
}
let name: String = getUserName()
let answer: Bool = checkIfUserIsPremium()
// ------------------------------------------------------

// Globala variabler flyter omkring i filen. Its frown upon.
//var userDidCompleteOnboarding: Bool = false
//var userProfileIsCreated: Bool = true

func showFirstScreen() {
    var userDidCompleteOnboarding: Bool = false
    var userProfileIsCreated: Bool = true
    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileIsCreated: userProfileIsCreated)
    
    if status == true {
        print("SHOW HOME SCREEN")
    } else {
        print("SHOW ONBOARDING SCREEN")
    }
}
func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool {
    if didCompleteOnboarding && profileIsCreated {
        doSomethingElse(someValue: didCompleteOnboarding)
        return true
    } else {
        return false
    }
}
showFirstScreen()



func doSomethingElse(someValue: Bool) {
    
}

// ---------------------------------------------------------------------------------

// Funktion som inte returnerar något
func doSomething() {
    
}
// Kan även skrivas så här. Void har inget värde
func doNewThing() -> Void {
   
}

// Så fort den får true på en return så hoppar den ur funktionen och eventuell kod efter körs aldrig
func testSomething() -> String {
    var title: String = "Harry Potter"
    // If title is equal to Harry Potter
    if title == "Harry potter" {
        return "Wizard"
    } else {
        return "Muggle"
    }
}

let newValue = testSomething()

func checkIfTitleIsAvengers() -> Bool {
    var title: String = "Avengers"
    
    // Make sure title == Avengers
    guard title == "Avengers" else {
        print("Not Marvel")
        return false
    }
    return true
}

func checkIfTitleIsAvengers2() -> Bool {
    var title: String = "Avengers"
    
    if title == "Avengers" {
        return true
    } else {
        return false
    }
}

// Calculated variables are basically functions. Generally good for when you don´t need ti oass data into the function

let number1 = 5
let number2 = 8

func calculateNumbers() -> Int {
    return number1 + number2
}

func calculateNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

var calculatedNumber: Int {
    return number1 + number2
}

let result1 = calculateNumbers()
let result2 = calculateNumbers(value1: number1, value2: number2)
let result3 = calculatedNumber

print(result1)
print(result2)
print(result3)
