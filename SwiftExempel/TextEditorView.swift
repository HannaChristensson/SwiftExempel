// SwiftExempel
//  TextEditorView.swift
//  Created by Hanna Christensson on 2024-01-24.

/*                  TextEditor
 För när användaren ska skriva in text längre än en rad. Vid en rad använd textField.
 TextEditor(text: Binding String)
 
 */

import SwiftUI

struct TextEditorView: View {
    
    @State var textEditorText: String = "Text starts here"
    @State var savedText: String = ""
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    //.foregroundStyle(.red)
                    .colorMultiply(.gray.opacity(0.5))
                    .cornerRadius(10)
                
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Spara".uppercased())
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        //.clipShape(Capsule())
                })
                Text(savedText)
                
                Spacer()
            }
            .padding()
            //.background(Color.green)
            .navigationTitle("TextEditor test")
        }
        
        
    }
    
    func saveText() {
        
    }
}

#Preview {
    TextEditorView()
}
