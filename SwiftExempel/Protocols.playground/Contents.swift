import Foundation    // LEKTION NR 17

// PROTOCOL: is a list of rules or requirements that an object have to follow


// Right now this struct does not conform to any protocol.
struct EmployeeModel: EmployeeHasAName {
    
    let title: String
    let name: String
}

// Skapa protocol
// Jag fick upp varning och fix som nedan, tutorial fick inte det. Utan kunde ha "var name: String".
protocol EmployeeHasAName {
    var name: String { get }
}

/* När man skapar en ny SwiftUI-fil så på ContentView-sidan har man nedan kod.

 import SwiftUI
 
 struct ContentView: View {
 
    var body: some View {
 
        Text("Hello world")
 
    }
}
 
*/

// struct ContentView conform to the viewprotocol. Viewprotocol kräver att det finns en body.
// variabel body av type some view
// Alla SwiftUI-views kräver det.
