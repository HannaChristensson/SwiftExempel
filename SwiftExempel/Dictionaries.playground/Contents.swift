import Foundation      // LEKTION NR 14     DICTIONARIES

// Arrays: har koll på ordningen av värden. Data in specific order.
// Dictionarys: Accessing items in a dictionary is very fast. Large sets of data an everyone has a uniqe key, then we can use a dictionary. We dont have to worry about crashing the app, because it returns an optional.

// Array of strings. Indexorder. Can have two of the same value
var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]
print(finalFruits)
// Om man skriver ett index som inte finns, krashar appen
let myFruit = finalFruits[1]

// Set of strings. Sets dont have orders, cant have 2 equal values
var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet)
print(fruitsSet)


// Dictionarys: can have duplicate of the same value, have keys can not be duplicated. Dictionary dont have orders.
// Nedan: Key är en String och värdet är en Boolean
var myFirstDictionary: [String:Bool] = [
    "Apple": true,
    "Orange": false]

// Skriver man en key som inte finns, text Banana, kraschar inte appen, värdet blir nil.
let item = myFirstDictionary["Apple"]
print(item)

// Hålla koll på att inte ha två likadana keys
var anotherDictionary: [Int:String] = [
    0 : "Apple",
    176 : "Banana"
]

let item2 = anotherDictionary[176]

// Add to a dictionary
anotherDictionary[10] = "Mango"
print(anotherDictionary)

// Remove from dictionary
anotherDictionary.removeValue(forKey: 176)
print(anotherDictionary)


struct PostModel {
    
    let id: String
    let title: String
    let likeCount: Int
    
}

var postArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    PostModel(id: "def678", title: "Post 2", likeCount: 54),
    PostModel(id: "ghi987", title: "Post 3", likeCount: 15)
]

if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}

var postDict: [String:PostModel] = [
    "abc123": PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    "def678": PostModel(id: "def678", title: "Post 2", likeCount: 54),
    "ghi987": PostModel(id: "ghi987", title: "Post 3", likeCount: 15)
]

let myNewItem = postDict["def678"]
print(myNewItem)
