//  SwiftExempel
//  ColorsTutorialView.swift
//  Created by Hanna Christensson on 2024-01-22.
//    COLORS
// Light mode är .primary svart med vit bakgrund
// Dark mode är .primary vit med svart bakgrund
// Color Literal: variabel nedan = #colorLiteral()
// Kan göra egna färger i Assets. Sen använda de färgerna tex .fill(Color("namnet du gav färgen")
// Shadows: använd gärna svart som shadow eller samma färg som redan finns.

import SwiftUI

struct ColorsTutorialView: View {
    
    var purpleColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
    var mintColor = #colorLiteral(red: 0.2209841013, green: 0.9506701827, blue: 0.6010776758, alpha: 1)
    
    var body: some View {
        
        Text("Text i färg")
            .foregroundColor(.purple)
        RoundedRectangle(cornerRadius: 25)
            .fill(
                Color(purpleColor)
            )
            .frame(width: 300, height: 100)
        
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.primary)
            .frame(width: 300, height: 100)
        
        
        RoundedRectangle(cornerRadius: 25)
            .fill(Color(mintColor))
            .frame(width: 300, height: 100)
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.purple)
            .frame(width: 300, height: 100)
        
        HStack {
            
            Circle()
                .fill(Color(UIColor.systemIndigo))
                .shadow(color: Color.blue.opacity(0.8), radius: 10, x: -20, y: -10)
            
            Circle()
                .fill(Color("CustomColor"))
                .shadow(radius: 10)
        }
        
    }
}

#Preview {
    ColorsTutorialView()
}
