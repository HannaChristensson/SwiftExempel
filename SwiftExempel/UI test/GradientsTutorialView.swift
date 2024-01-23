//  SwiftExempel
//  GradientsTutorialView.swift
//  Created by Hanna Christensson on 2024-01-22.
//      GRADIENTS = lutning
// linear, gradient, 
// .leading, .trailing, .topLeading, .bottomTrailing, .topLeading
// I arrayen börjar med två färger men kan lägga till flera
// [Color.mint, Color.blue]

import SwiftUI

struct GradientsTutorialView: View {
    var body: some View {
        
    
        RoundedRectangle(cornerRadius: 25)
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [Color.red, Color.orange]),
                    center: .topLeading,
                    startRadius: 5,
                    endRadius: 400)
            )
            .frame(width: 300, height: 200)
        
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Vilka färger som ska vara med och vart de ska börja/sluta
                LinearGradient(
                    gradient: Gradient(colors: [Color.mint, Color.green, Color.blue]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
            )
            .frame(width: 300, height: 200)
        HStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    //Vilka färger som ska vara med och vart de ska börja/sluta
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.pink]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .frame(width: 150, height: 150)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.pink]),
                        startPoint: .topLeading,
                        endPoint: .bottom)
                )
                .frame(width: 150, height: 150)
        }
    }
}

#Preview {
    GradientsTutorialView()
}
