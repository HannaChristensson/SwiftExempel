import Foundation    // LEKTION NR 13               ARRAYS & SETS

// Två String-variabler
var myTitle: String = "Hello string"
var myTitle2 = "Hello again"

// Tuple
func doSomething(value: (titel1: String, titel2: String)) {
    
}

doSomething(value: (myTitle, myTitle2))

// Custom data model
struct TitlesModel {
    let title: String
    let title2: String
}

func doSomething(value: TitlesModel) {
    
}

doSomething(value: (titel1: myTitle, titel2: myTitle2))

// ----------------------------------

let apple = "Apple"
let orange = "Orange"

let fruits: [String] = ["Apple", "Orange"]
print(fruits)

let fruits2: [String] = [apple, orange]
print(fruits2)

// Generic. Inte vanligt sätt att skriva
let fruits3: Array<String> = [apple, orange]
print(fruits3)

let colors = ["Red", "Blue", "Green"]
let myBools: [Bool] = [true, false, true, true, true, false]

func doSomething(value: [String]) {
    
}

var fruitsArray: [String] = ["Apple", "Orange", "Kiwi", "Pear"]

let count = fruitsArray.count
let firstItem = fruitsArray.first
let lastItem = fruitsArray.last
let endIndex = fruitsArray.endIndex

// Ifall array är tom
let firstFruit = fruitsArray.first
if let firstFruit = fruitsArray.first {
    // first item
}

// Tänk på att array ska vara sparad som var och inte let för att kunna ändras.
// Ett inte så vanligt sätt att lägga till värden i arrayen
fruitsArray = fruitsArray + ["Banana", "Mango"]

// Så här lägger man till ett värde (sist i arrayen)
fruitsArray.append("Ananas")

// Så här lägger man till flera samtidigt
fruitsArray.append(contentsOf: ["Lichi", "Melon"])

print(fruitsArray)

// En array: count är antal och börjar på 1. Index börjar på 0. Så antal 1-5 blir index 0-4

// Subscript. Accessing a subscript of the array. Används när vi vet att det finns ett värde
fruitsArray[5]

// Annars kolla om det finns värde innan försöker använda det/ändra/ta bort.
if fruitsArray.indices.contains([24]) {
    let item = fruitsArray[24]
}

let firstIndex = fruitsArray.indices.first
let test = firstIndex
print(test)
//print(firstIndex)
let lastIndex = fruitsArray.indices.last ?? 20
print(lastIndex)


fruitsArray.append("Watermelon")
fruitsArray.insert("Drakfrukt", at: 2)
print(fruitsArray)
fruitsArray.insert(contentsOf: ["Passionsfrukt", "Kokosnöt"], at: 3)
print(fruitsArray)

fruitsArray.remove(at: 1)
print(fruitsArray)

fruitsArray.removeAll()
print(fruitsArray)

struct ProductModel {
    let title: String
    let price: Int
}

var myProducts = [
    ProductModel(title: "Produkt 1", price: 50),
    ProductModel(title: "Produkt 2", price: 25),
    ProductModel(title: "Produkt 3", price: 40),
    ProductModel(title: "Produkt 4", price: 11)
]


var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]
print(finalFruits)

// Sets do not have an order. Kan inte ha likadana värden
var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet)
