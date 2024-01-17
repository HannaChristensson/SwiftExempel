//  SwiftExempel
//  VariablesConstantsView.swift
//  Created by Hanna Christensson on 2024-01-17.


/*
 Values are stored in two types of containers: var for variables and let for constants.
 Variables value can change. Constants value can not change.
 Once a variable och constants data type has been established it can not be changed. A variable can not be changed to a constant and vice versa.
 Swift allows a wide range of characters to be used as constant and variable names including Unicode, characters and emojis.
 In SwiftUI you can start a variable declaration with @State, this helps us keep track of what state that variable is in, and can tell the views that use the variable to update. State cannot be shared between screens, you can make it private to remember to not share that variable with anything else. The $ in front of our variable is called a "2 way binding". That means we can update the variable in the code.
 
 Arithmetic Operators: + addition, - subtraction, / multiplication, division, % remainder
        var x = 0
            x = 4 + 2     x is now 6
            x = 4 - 2     x is now 2
            x = 4 * 2     x is now 8
            x = 4 / 2     x is now 2
            x = 4 % 2     x is now 0
 Compound assignment operators: +=, -=, *=, /=, %=
    var numberOfDogs = 100
    numberOfDogs += 2    är nu 102
    numberOfDogs -= 2    är nu 98
    numberOfDogs *= 2    är nu 200
    numberOfDogs /= 2    är nu 50
    numberOfDogs %= 2    
 Ternary Operator =
 String interpolation: construct a string from a mix of variables
    var dogs = 3
    print("I have \(dogs) dogs!")
 
 */


import SwiftUI

struct VariablesConstantsView: View {
    
    //Deklarera en variabel/constant
    @State var dailyTemperature: Int
    
    //Initialisera en variabel/constant
    let boilingPoint = 100
    
    //Ändra värdet på variabel med annan variabels värde, se button
    let reallyHot = 50
    
    @State var myName = ""
    @State var yourName: String
    
    //Exempel på emojis som variabelnamn eller värde
    var strongChili = "🌶️"
    let 🌶️ = "Very strong"
    @State private var shouldShowChili = true
    
    //DATA TYPER: 
    //Int - integer numbers, heltal
    var myNumber = 10
    //Double - decimaltal, floating points numbers
    var myShoeSize = 36.5
    //String - text, a sequence of characters
    var myHoleName = "Hanna Christensson"
    //Bool - boolean. Can either be true or false
    var isColored = true
    var isGrey = false
    
    @State var apples = 6
    
    //HÄR I BODY SKRIVER VI UI:t
    var body: some View {
        
        Toggle(isOn: $shouldShowChili) {
            Text("Should show chili emoji")
        }
        Text(shouldShowChili ? "🌶️" : "")
        
        //String interpolation
        
        
        
        Button(action: {
            myName = "Hanna"
            yourName = "Sara"
            dailyTemperature = 18
            dailyTemperature = reallyHot
            print("Dagens temperatur: \(dailyTemperature)grader")
        }, label: {
            Text("Knapp")
            
        })
        Text("🦄")
                .font(.system(size: 60))
        Text(🌶️)
        Text(strongChili)
        
    }
}

#Preview {
    VariablesConstantsView(dailyTemperature: 20, yourName: "Test")
}
