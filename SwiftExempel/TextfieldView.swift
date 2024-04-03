//  SwiftExempel
//  TextfieldView.swift
//  Created by Hanna Christensson on 2024-01-24.

/*          TEXTFIELD
 För en rads text, tex användarnamn, lösenord.
 TextField(title: StringProtocol, text: Binding<String> )
 title är placeholder
 text Binding string, skapa en State-variabel av typ String, vi ska binda den till textfield med $ och variabelnamn
 onEditingChanges om man vill ha action när någon klickar på textfield
 onCommit om man vill ha action when return button klickas på keybord
 formatter för ändra texten i textfield, currency, dollarsign
 
 
 */

import SwiftUI

struct TextfieldView: View {
    
    @State var textFieldText: String = ""
    
    @State var myNumber1: Double = 0.0
    @State var myNumber2: Double = 0.0
    
    @State var calculatedResult: Double = 0.0
    @State var chosenProcent: Double = 0.00
    @State var personsPayingHome: Int = 0
    
    // Lokal array
    @State var dataArray: [String] = []
    
    var body: some View {
        
        NavigationStack {
            VStack {
            TextField("Skriv ditt namn", text: $textFieldText)
        //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3)
                    .cornerRadius(10))
                    .foregroundStyle(.red)
                    .font(.headline)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                    
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ?  Color.green : Color.gray)
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .font(.title)
                })
                .disabled(!textIsAppropriate())
                
                // Den tillagda texten i dataArray skrivs ut under Button
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
                
                
                
            }
            .padding()
            .navigationTitle("Textfield test")
        }
       
        
    }
    
    func textIsAppropriate() -> Bool {
        // Text
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    
    // Funktion för att spara text. Den inskrivna texten i textfield läggs på dataArray varje gång knappen Button trycks då den anropar denna fuktion. Efter texten lagts till töms textfield på inskrivna ordet.
    func saveText() {
        dataArray.append((textFieldText))
        textFieldText = ""
    }
}

#Preview {
    TextfieldView()
}
