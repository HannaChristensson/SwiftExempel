import Foundation     // LEKTION NR 15         FOR-LOOPS

// FOR-LOOP
// for each item in 0 to 99, enter the brackets, execute 100 times. Så kommer köra koden inom måsvingarna 100 ggr. x kommer vara samma som värdena vi loopar igenom, 0-99.
for x in 0..<100 {
    print(x)
}

let myArray = ["Alpha", "Beta", "Gamma", "Delta", "Epsilon"]

var secondArray: [String] = []

for item in myArray {
    print(item)
    
    if item == "Gamma" {
        secondArray.append(item)
    }
}

print(secondArray)

struct LessonModel {
    let title: String
    let isFavorite: Bool
}

let allLessons = [
    LessonModel(title: "Lesson 1", isFavorite: true),
    LessonModel(title: "Lesson 2", isFavorite: true),
    LessonModel(title: "Lesson 3", isFavorite: false),
    LessonModel(title: "Lesson 4", isFavorite: false)
]

var favoriteLessons: [LessonModel] = []

// lesson-ordet ändrat till x för test
for x in allLessons {
    if x.isFavorite {
        favoriteLessons.append(x)
    }
}
print(favoriteLessons)

// n index, x item we are looping. Break avbryter loopen. Continue betyder avbryt pågående loop men fortsätt med nästa
for (index, lesson) in allLessons.enumerated() {
    
    if index == 1 {
        //break
        continue
    }
    
    print("index: \(index) || lesson: \(lesson)")
}

// Googla control flow in swift - får upp sida Control Flow - Documentation - Swift.org
// While Loops
// While
// Repeat-While
// Switch
// Fallthrough
