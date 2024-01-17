//  SwiftExempel
//  EmojisView.swift
//  Created by Hanna Christensson on 2024-01-17.

//  För få fram emojis på mac tryck control + command + space

import SwiftUI

struct EmojisView: View {
    
    //Exempel på emojis som variabelnamn
    let 🌕 = "Full Moon"
    var fullMoon = "🌕"
    let 🌑 = "New Moon"
    let 🌙 = "Crescent Moon"
    var strongChili = "🌶️"
    var nudelsoppa = "🍜"
    var redWine = "🍷"
    var basil = "🌱"
    var unicorn = "🦄"
    var heart = "❤️"
    var tarning = "🎲"
    
    var body: some View {
        Text("Hello, Emoji World!")
            .font(.title)
            .padding()
        Spacer()
        
        HStack {
            Text("Mat emojis: ")
                .font(.title)
            Text(strongChili)
            Text(nudelsoppa)
        }
        
        Text(unicorn)
            .font(.system(size: 60))
        
        Spacer()
        
        Button(fullMoon) {
            //Action here
        }
        .font(.system(size: 60))
        
        Spacer()
            
    }
}

#Preview {
    EmojisView()
}
