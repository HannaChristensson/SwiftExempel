import Foundation  // LEKTION NR 9

/*
 Structs are fast! Structs are stored in the Stack (memory). Objects in the Stack are Value types.
 Value types are copied and mutated
 Structs have an implicit init. Datorn vet själv att skapa en init om vi inte gör det, eller initvärden.
 Vi kan manuellt skapa init och ändra, tex sätta ett defaultvärde
 Kan använda optional i en struct också
 */

struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
//     Manually. Self means title in the quiz-struct above and not the title in the init paranthesis
//     init(title: String, dateCreated: Date) {
//         Self hänvisar till att title är titeln i Quiz-struct och title efter = är title i initparantesen/passed in
//          self.title = title
//          self.dateCreated = dateCreated
    
//    Också manuellt men här är datecreated satt till defaultvärde.
//      init(title: String, dateCreated: Date = .now) {
//        self.title = title
//        self.dateCreated = dateCreated
    
    init(title: String, dateCreated: Date?, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
    
    
    }
}

let myObject: String = "Hello quiz"
// let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: .now)
// let myQuiz: Quiz = Quiz(title: "Quiz 2")    //Eftersom finns defaultvärde behövs inte datecreated sättas, då blir defaultvärde
// let myQuiz = Quiz(title: "Quiz 1", isPremium: nil)
let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: nil, isPremium: false)

print(myQuiz.title)

// --------------------------------------------

// Datamodel for user. Immutable struct = all let constants = NOT mutable - cannot mutate it
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1: UserModel = UserModel(name: "Hanna", isPremium: false)

func markUserAsPremium() {
    print(user1)
    
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}

//markUserAsPremium()

// --------------------------

// Mutable struct = can change
struct UserModel2 {
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Hanna", isPremium: false)

func markUserAsPremium2() {
    print(user2)
    // mutate the struct
    user2.isPremium = true
    print(user2)
}

markUserAsPremium2()
// -------------------------

// Immutable struct
struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func marUserAsPremium(newValue: Bool) -> UserModel3 {
        return UserModel3(name: name, isPremium: newValue)
    }
}

var user3: UserModel3 = UserModel3(name: "Sara", isPremium: false)

user3 = user3.marUserAsPremium(newValue: true)

// ------------------------

// Mutable struct. private(set), mutating func
struct UserModel4 {
    let name: String
    private(set)var isPremium: Bool
    
    mutating func markUserAsPremium() {
        isPremium = true
    }
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}

struct User5 {
    let name: String
    let isPremium: Bool
    let isNew: Bool
}


