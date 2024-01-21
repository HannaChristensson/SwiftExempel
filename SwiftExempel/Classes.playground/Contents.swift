import Foundation       // LEKTION NR 11

/* CLASSES: Reference types. Create a class we call it an instance. The instance of the class is pointing to the object in memory. We update the object in memory.
Classes are slow. They are stored in the Heap (memory). Objects in the Heap are reference types.
Reference types point to an object in memory and update the object in memory.
 No implicit init. Manually create the init. Istället för att göra en init kan man direkt i classen ge variablerna värden/initial values. Som let title: String = "" och var showButton: Bool = false
 Destroy object - deinitialize it - deinit. Deinit finns i class men ej i Struct
 
*/

// All of the data needed for some screen
class ScreenViewModel {
    
    let title: String
    private(set) var showButton: Bool
    
    // Same init as a Struct, except structs have implicit inits
    init(title: String, showButton: Bool) {
      // self.title hänvisar till titel i classen och  = title hänvisar till titel i parantes som passes in
        self.title = title
        self.showButton = showButton
    }
    //
    deinit {
        // Runs as the object is being removed from memory. Structs do NOT have deinit.
    }
    func hideButton() {
        showButton = false
    }
    func updateShowButton(newValue: Bool) {
        showButton = newValue
    
    }
}

// Notice that we are using a let, because: the object itself is not changing, the data inside the object is changing
// Kan även skrivas: let viewModel: ScreenViewModel = ScreenViewModel(.....)
let viewModel = ScreenViewModel(title: "Screen 1", showButton: true)
// viewModel.showButton = false
let value = viewModel.showButton

viewModel.hideButton()
viewModel.updateShowButton(newValue: false)
