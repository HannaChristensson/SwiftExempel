import Foundation   // Lektion nr 4

var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 100

// Addition
likeCount = likeCount + 1
likeCount += 1

// Subtraction
likeCount = likeCount - 1
likeCount -= 1

// Multiplication
likeCount = likeCount * 5.5
likeCount *= 1.5

// Division
likeCount = likeCount / 2
likeCount /= 2

//

// Order of operations does matter!
// PEMDAS = Parentheses, exponents, multiplication/division(whichever comes first), addition/subtraction (whichever comes first).
// Svenska: Paranteser, upphöjt/exponenter, multiplikation/division (i den ordning de kommer), addition/subtraktion (i den ordning de kommer).
likeCount = likeCount - 1 * 2

var starsCount:Double = 5

if starsCount == 5 {
    print("Receptet har 5 stjärnor")
} else {
    print("Receptet har INTE 5 stjärnor.")
}

if starsCount != 5 {
    print("Receptet har INTE 5 stjärnor.")
}

if starsCount > 5 {
    print("Receptet har mer än 5 stjärnor")
}
if starsCount >= 5 {
    print("Receptet har 5 stjärnor eller fler.")
}
if starsCount < 5 {
    print("Receptet har färre än 5 stjärnor/4 stjärnor eller mindre.")
}
if starsCount <= 5 {
    print("Receptet har 5 eller färre stjärnor.")
}

var recepieShared: Double = 10
if starsCount > 3 && recepieShared > 0 {
    print("Receptet har mer än 3 stjärnor OCH är delat mer än noll gånger")
} else {
    print("Receptet har 3 eller färre stjärnor ELLER är delat 0 gånger eller färre.")
}

if starsCount > 3 || recepieShared > 0 {
    print("Receptet har mer än 3 stjärnor ELLER är delat mer än 0 ggr")
} else {
    print("Receptet har 3 stjärnor eller mindre OCH är delat 0 gånger eller färre.")
}

var userIsPremium: Bool = true
var userIsNew: Bool = false

if userIsPremium == true && userIsNew == true {
    print("Användaren är premium OCH ny användare")
} else {
    print("Användaren är antingen inte premium eller ny")
}

if starsCount > 3 && recepieShared > 0 || viewCount > 50 {
    print("EXECUTE")
}
if (starsCount > 100) && (recepieShared > 0 || viewCount > 50) {
    print("EXECUTE THIS TOO")
}

// Else if statement: Gör en första if, sedan hur många else if som helst, sen kan avsluta med en else

if starsCount > 10 {
    print("Fler än 10 stjärnor")
} else if starsCount > 5 {
    print("Fler än 5 stjärnor")
} else {
    print("Inget av det")
}


