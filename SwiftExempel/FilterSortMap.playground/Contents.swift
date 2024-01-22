import Foundation      // LEKTION NR 16        FILTER, SORT, MAP

//

struct DatabaseUser {
    
    let name: String
    let isPremium: Bool
    let order: Int
}

// Array of users
var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "Hanna", isPremium: true, order: 4),
    DatabaseUser(name: "Sara", isPremium: true, order: 2),
    DatabaseUser(name: "Nick", isPremium: false, order: 3),
    DatabaseUser(name: "Emelie", isPremium: false, order: 1),
    DatabaseUser(name: "Erling", isPremium: true, order: 50)
]

// Vi skapar en ny variabel som ska spara alla premiumanvändare som läggs till en tom array
//    var allPremiumUsers: [DatabaseUser] = []

// Här loopar vi igenom array och lägger till. Vi har manuellt skrivit loopen
//    for user in allUsers {
//      if user.isPremium {
//         allPremiumUsers.append(user)
//    }
//}

// Här skapar vi en ny variabel och loopar igenom med funktionen filter som finns redan i Swift
var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
    if user.isPremium {
        return true
    }
    return false
}
print(allPremiumUsers)

// Koden kan även skrivas kortare så här, innebär samma som ovan.

var allPremiumUsers2: [DatabaseUser] = allUsers.filter { user in
    user.isPremium
}

// Koden kan även skrivas så här, ännu kortare. To reference the item we are looping on we use $0
var allPremiumUsers3: [DatabaseUser] = allUsers.filter({ $0.isPremium })

// Sort the users in the order that they are. Alternativ 1
var orderedUsers: [DatabaseUser] = allUsers.sorted { user1, user2 in
    return user1.order < user2.order
}
print(orderedUsers)

// Alternativ 2. Kortare sätt att skriva koden.
var orderedUsers2: [DatabaseUser] = allUsers.sorted(by: { $0.order < $1.order })

// Map: konvertera tex array av DatabaseUser till en array av String. Transform from one type to another type, we call that mapping.

var userNames: [String] = allUsers.map { user in
    return user.name
}

print(userNames)

// Detta är kortare sätt att skriva map ovan
var userNames2: [String] = allUsers.map ({ $0.name})

print(userNames2)
