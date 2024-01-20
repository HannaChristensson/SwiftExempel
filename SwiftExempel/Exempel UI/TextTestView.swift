//  SwiftExempel
//  TestTextView.swift
//  Created by Hanna Christensson on 2024-01-17.

import SwiftUI

struct TextTestView: View {
    
    @State var myName = "Hanna"
    @State var myAge = 38
    @State var favoritMat = "🍜"
    
    var body: some View {
        
        Spacer()
        Text("Hello, World!")
        Text(myName)
        Text(String(myAge))
        Text("🍷")
        Text("Mitt namn är: \(myName) och jag är \(myAge) år. Jag gillar att äta \(favoritMat) och dricka 🍷 till.")
        
        Spacer()
        
        Text(".trailing är till höger")
            .frame(maxWidth: .infinity, alignment: .trailing)
        Text(".leading är till vänster")
            .frame(maxWidth: .infinity, alignment: .leading)
        
        Text("Testa largeTitle")
            .font(.largeTitle)
        Text("Testa title")
            .font(.title)
        Text("Testa headline")
            .font(.headline)
        Text("Testa subheadline")
            .font(.subheadline)
        Text("Testa callout")
            .font(.callout)
        Text("Testa footnote")
            .font(.footnote)
        Text("Testa caption")
            .font(.caption)
        Text("Testa caption2")
            .font(.caption2)
        
        Text("Testa bakgrundsfärg")
            .background(.yellow)
        //Använd plus för lägga ihop text, med tex olika färg
        Text("Colored ")
                    .foregroundStyle(.red)
                +
                Text("SwifUI ")
                    .foregroundStyle(.green)
                +
                Text("Text")
                    .foregroundStyle(.blue)
        
        
    }
}

#Preview {
    TextTestView()
}
