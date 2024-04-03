//  SwiftExempel
//  TextfieldView.swift
//  Created by Hanna Christensson on 2024-01-24.

/*          TEXTFIELD
 TextField(title: StringProtocol, text: Binding<String> )
 title är placeholder
 text Binding string, skapa en State-variabel av typ String, vi ska binda den till textfield med $ och variabelnamn
 */

import SwiftUI

struct TextfieldView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        
        NavigationStack {
            VStack {
                TextField("Skriv ett tal", text: $textFieldText)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundStyle(.red)
                    .font(.headline)
                
                Button(action: {
                    //
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green).cornerRadius(10)
                        .foregroundStyle(.white)
                        .font(.title)
                })
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("Textfield test")
        }
       
    }
}

#Preview {
    TextfieldView()
}
