import Foundation          // LEKTION NR 12

// Rule of thumb: We want everything to be as private as possible. This makes your code easier to read/debug and is good coding practice!

struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set)var isFavorite: Bool     //ändrad från let
    
    //alternativ 1: då kan det vara let isFavorite:Bool
    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavorite: newValue)
    }
    //alternativ 2: med private(set)var ovan
    mutating func updateFavoriteStatus2(newValue: Bool) {
        isFavorite = newValue
    }
    
}

enum MovieGenre {
    case comedy, action, horror
}

class MovieManager {
    
    // public:
    public var movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    
    var movie2 = MovieModel(title: "Stepbrothers", genre: .comedy, isFavorite: false)
    
    // private: Nu kan movie3 bara nås inifrån classen och inte ändras utanför som movie1 och movie2 nedan.
    private var movie3 = MovieModel(title: "Avanger", genre: .action, isFavorite: false)
    // private(set): Read is public, set is private. Man kan läsa den utifrån, men inte ändra den.
    private(set)var movie4 = MovieModel(title: "Hajen", genre: .horror, isFavorite: false)
    
    func updateMovie4(isFavorite: Bool) {
        movie4.updateFavoriteStatus2(newValue: isFavorite)
    }
}

let manager = MovieManager()

// Get value outside of class
let someValue = manager.movie1

// Updating value, Set new value from outside of class
manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)
manager.movie2.updateFavoriteStatus2(newValue: true)
manager.updateMovie4(isFavorite: true)

print(manager.movie1)
print(manager.movie4)


// VERSION 1
// We can GET and SET the value from outside the object.
// "too public"
let movie1 = manager.movie1
manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)

// VERSION 2
// We cant GET or SET the value from outside the object. Så nedan cannot access
// let movie3 = manager.movie3
// manager.movie3 = manager.movie3.updateFavoriteStatus(newValue: true)

// VERSION 3 - BEST PRACTICE
// We can GET the value outside the object, but cant SET the value from outside the object.
let movie4 = manager.movie4
//manager.movie4 = manager.movie4.updateFavoriteStatus(newValue: true)   Detta funkar ej utifrån(SET value)
manager.updateMovie4(isFavorite: true)     //Denna funkar då den set value från insidan



// Note: private & public are by far the most common but there are many others
// Other levels of access control
// open
// public
// internal
// fileprivate
// private
