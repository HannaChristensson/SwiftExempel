import Foundation     // Lektion nr 2

// Data types: String, Int, Double, Float, CGFloat, Bool

// Deklarera en variabel av typen string
    var myNameIs: String
// Initializera en variabel
    myNameIs = "Hanna"
// Deklarera och initialisera en stringvariabel
    var mySistersName = "Sara"
// Fungerar även att deklarera/initialisera en variabel med datatypen utskriven.
    var myMothersName: String = "Carina"
    var myAgeIs: Int = 38

// Går att skapa en ny variabel och använda värdet från en annan variabel
    var myNieceSecondNameIs = myNameIs


// String is regular text
    let myFirstItem = "Hello world!"

// Bool, is a Boolean, värdet kan vara sant eller falskt
    let myTrueBool = true
    let myFalseBool = false

// Date
let myFirstDate: Date = Date()  // Dagens datum och klockslag, skrivs ut amerikansk stil
let todaysDate: Date = .now     // Samma som ovan 

// NUMBERS
// Int är heltalsvärde/whole Integer
    var myAge = 38

// Float är decimaltal. Stored data: Float is always 32-bit.
    var numberPi = 3.14

// Double är decimaltal. Use for math. Stored data: Double is always 64-bit.
    var myShoeSize = 36.5

// CGFloat: is either 32-bit or 64-bit depending on the device it runs on, but realistically 64-bit all the time. Use CGFloat for UI, tex pixlar, fontsize
    var letThirdNumber: CGFloat = 1.0

