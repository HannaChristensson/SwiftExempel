import Foundation    // LEKTION NR 6
// Three ways to unwrapp optionals: nil coalescing ?? with default value, use a if-let and then enter the closure with that new value or use a guard statement and return out of the function if there is no value.

// There is always a value and it is a Boolean. Can be true or false
let myBool: Bool = false

// We dont know if there is a value, but if it is, it is a Boolean. Can be true, false or nil
var myOptionalBool: Bool? = nil

print(myOptionalBool)
myOptionalBool = true
print(myOptionalBool)
myOptionalBool = false
print(myOptionalBool)
myOptionalBool = nil
print(myOptionalBool)

// nil coalescing operator ?? Means otherwise

let newValue: Bool? = myOptionalBool

// Detta nedan går ej. Kan inte sätta en bool till en optionalBool
// let newValue2: Bool = myOptionalBool
// Lösningen är: The value of myOptionalBool (if there is one), otherwise false
let newValue3: Bool = myOptionalBool ?? false
// Kan använda .description som är a textual representation of the Boolean value
print("New value 3: \(newValue3.description)")

var myString: String? = "Hello world!"

print(myString ?? "There is no value!")

myString = "New text"
print(myString ?? "There is no value!")

myString = nil
print(myString ?? "There is no value")

let newString = myString ?? "some default value"
print(newString)

// -----------------------------

var userIsPremium: Bool? = nil

func checkIfUserIsPremium() -> Bool? {
    return userIsPremium
}
func checkIfUserIsPremium2() -> Bool {
    return userIsPremium ?? false
}

let isPremium = checkIfUserIsPremium2()

// If-let:
// When if-let is successful, enter the closure
func checkIfUserIsPremium3() -> Bool {
    // If there is a value, let newValue equal that value
    if let newValue = userIsPremium {
        // Here we have access to the non-optional value
        print(newValue)
        return newValue
    } else {
        return false
    }
}

func checkIfUserIsPremium4() -> Bool {
    
    if let newValue = userIsPremium {
        return newValue
    }
    return false
}

func checkIfUserIsPremium5() -> Bool {
    if let userIsPremium {
        return userIsPremium
    }
    return false
}

// Guard
// When a guard is a failure, then enter the closure
func checkIfUserIsPremium6() -> Bool {
    // Make sure there is a value. If there is, let newValue equal that value. Else return out of the function
    guard let newValue = userIsPremium else {
        return false
    }
    // Here we have access to the non-optional value
    return newValue
}

func checkIfUserIsPremium7() -> Bool {
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
}

// ---------------------------------------------

var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil

func checkIfUserIsSetup() -> Bool {
    
    if let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie {
        // userIsNew == Bool AND
        // userDidCompleteOnboarding == Bool AND
        // userFavoriteMovie == String
        
        return getUserStatus(
            userIsNew: userIsNew,
            userDidCompleteOnboarding: userDidCompleteOnboarding,
            userFavoriteMovie: userFavoriteMovie
        )
    } else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavoriteMovie == nil
        return false
    }
}

func checkIfUserIsSetup2() -> Bool {
    
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavoriteMovie == nil
        return false
    }
    // userIsNew == Bool AND
    // userDidCompleteOnboarding == Bool AND
    // userFavoriteMovie == String
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    return false
}

// Layered if-let
func checkIfUserIsSetup3() -> Bool {
    
    if let userIsNew {
        // userIsNew == Bool
        
        if let userDidCompleteOnboarding {
            // userDidCompleteOnboarding == Bool
            
            if let userFavoriteMovie {
                // userFavoritMovie == String
                return getUserStatus(
                    userIsNew: userIsNew,
                    userDidCompleteOnboarding: userDidCompleteOnboarding,
                    userFavoriteMovie: userFavoriteMovie
                )
            } else {
                // userFavoriteMovie == nil
                return false
            }
        } else {
            // userDidCompleteOnboarding == nil
            return false
        }
        
    } else {
        // userIsNew == nil
        return false
    }
}

// Layered guard statement

func checkIfUserIsSetup4() -> Bool {
    
    guard let userIsNew else {
        // userIsNew == nil
        return false
    }
    // userIsNew == Bool
    guard let userDidCompleteOnboarding else {
        // userDidCompleteOnboarding == nil
        return false
    }
    // userDidCompleteOnboarding == Bool
    guard let userFavoriteMovie else {
        // userFavoriteMovie == nil
        return false
    }
    // userFavoriteMovie == String
    
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}

// Optional chaining

func getUsername() -> String? {
    return "Test"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    
    let username: String? = getUsername()
    // I will get the count if the username is not nil
    let count = username?.count
    let count1: Int = username?.count ?? 0
    
    
    let title: String = getTitle()
    // I will get the count always
    let count2 = title.count
    
    // If username has a value, and first character in username has a value, then return the value of isLowercase
    // Optional chaining
    let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
    print(firstCharacterIsLowercased)
    
    // I will get the count because I know for sure username is not nil.
    // This will crash your application if username is nil!
    let count3: Int = username!.count
    
}

getUserData()

// safely unwrap an optional
// nil coalscing
// if-let
// guard

// explicitly unwrap optional med ! but probably should not
