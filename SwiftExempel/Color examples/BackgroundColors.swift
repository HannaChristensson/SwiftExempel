//  SwiftExempel
//  BackgroundColors.swift
//  Created by Hanna Christensson on 2024-01-22.

// Bakgrund som modifier på VStack

import SwiftUI

struct BackgroundColors: View {
    
    var mintColor = #colorLiteral(red: 0.2209841013, green: 0.9506701827, blue: 0.6010776758, alpha: 1)
    
    var body: some View {
        
        VStack {
            Text("Lila bakgrund")
                .foregroundColor(.white)
                .font(.system(size: 44, weight: .bold, design: .serif))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Button(action: {
                
            }, label: {
                Text("Börja räkna")
                    .foregroundColor(.black)
            })
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(mintColor))
            .clipShape(Capsule())
            //.fixedSize(horizontal: true, vertical: true)
            
            
        }
        .background(.indigo.gradient)
        
       
        
    }
}

#Preview {
    BackgroundColors()
}
