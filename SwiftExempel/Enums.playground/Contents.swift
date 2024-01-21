import Foundation     // LEKTION NR 10
// Enum is the same as Struct except we know all cases at runtime
// Mutable = föränderlig. Immutable = oföränderlig

struct CarModel {
    let brand: CardBrandOption
    let model: String
}

struct CarBrand {
    let title: String
}

// Enum: when you know all of the cases. Enums are stored in memory the same way as a Struct but we cannot mutate them
enum CardBrandOption {
    case ford
    case toyota
    case honda
    
    // computed varible. Function that this closure execute everytime you call the variablename
    var title: String {
        
            switch self {
            case .ford:
                return "Ford"
            case .toyota:
                return "Toyota"
            case .honda:
                return "Honda"
            default:
                return "Default"
            }
        //if self == .ford {
        //   return "Ford"
            
        //} else if self == .toyota {
        //   return "Toyota"
        //} else {
        //    return "Default value"
        //}
    }
}

//enum CarBrandModel {
//    case Fiesta, Focus, Camry      //Kan skrivas så här i en mening/en rad också
//}

// var car1: CarModel = CarModel(brand: "Volvo", model: "V60")
// var car2: CarModel = CarModel(brand: "Ford", model: "Fiesta")
// var car3: CarModel = CarModel(brand: "Toyota", model: "Camry")

// var brand1 = CarBrand(title: "Ford")
// var brand2 = CarBrand(title: "Toyota")

// var car1 = CarModel(brand: brand1, model: "Fiesta")
// var car2 = CarModel(brand: brand1, model: "Focus")
// var car3 = CarModel(brand: brand2, model: "Camry")

var car1 = CarModel(brand: .ford, model: "Fiesta")
var car2 = CarModel(brand: .ford, model: "Focus")
var car3 = CarModel(brand: .toyota, model: "Camry")

var fordBrand: CardBrandOption = .ford

print(fordBrand.title)
