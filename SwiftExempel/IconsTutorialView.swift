//  SwiftExempel
//  IconsTutorialView.swift
//  Created by Hanna Christensson on 2024-01-23.
// Lektion nr 6

// Resizable: Text röda hjärtat nedan. Lägg till .resizable() för att hjärtat ska bli resizable to the frame.
// Aspect ratio: Vilken aspect ratio ska den resiza till. .fill, .fit
// ScaledToFit: Kan användas istället för aspect ratio.
// För hitta alla ikoner skaffa SF Symbols.
// Menyvalet "Flera färger" innebär SF symboler med fler färger, tex pencil.tip.crop.circle.badge.plus nedan. Vi kan göra hela ikonen i vår egen färg, men också att plusset är grönt(du ser i SF symbols vilka av ikonerna som har satt färg). För att skapa egen färg + ha tex den gröna så skriver du .renderingMode(.original)

import SwiftUI

struct IconsTutorialView: View {
    
   
    
    var body: some View {
        
        ZStack {
            Image(systemName: "heart")
                .font(.largeTitle)
            Image(systemName: "heart.fill")
                .font(.caption)
        }
        Image(systemName: "cloud")
            .foregroundColor(.blue)
        Image(systemName: "plusminus.circle")
        
        Image(systemName: "pencil.tip.crop.circle.badge.plus")
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .foregroundColor(.mint)
            .frame(width: 200, height: 200)
            
        
        Image(systemName: "heart.fill")
            //.font(.system(size: 100))
            .resizable()
            //.scaledToFit()
            .scaledToFill()
            //.aspectRatio(contentMode: .fit)
            .foregroundColor(.red)
            .frame(width: 200, height: 200)
            //.clipped()   //Detta klipper hjärtat där ramens kanter går
            
        
        HStack {
            Image(systemName: "heart.fill")
                .font(.title)
            .foregroundColor(.green)
            Image(systemName: "heart.fill")
                .font(.title)
            .foregroundColor(.green)
            Image(systemName: "heart.fill")
                .font(.title)
            .foregroundColor(.green)
            Image(systemName: "heart.fill")
                .font(.title)
            .foregroundColor(.green)
            Image(systemName: "heart.fill")
                .font(.title)
            .foregroundColor(.green)
        }
        
    }
}

#Preview {
    IconsTutorialView()
}
