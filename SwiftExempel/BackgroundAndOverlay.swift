//      SwiftExempel
//  BackgroundAndOverlay.swift
//  Created by Hanna Christensson on 2024-01-25.
/*
 Background: Behind eachother. Bakgrund på text lägger sig bakom texten.
 Overlays: On top of eachother. Overlay på text lägger sig framför texten.
 
 */

import SwiftUI

struct BackgroundAndOverlay: View {
    
    var color1 = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    var color2 = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
    
    
    var body: some View {
        
        Spacer()
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .background(
                Circle()
                    .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [color1, color2]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
            )
        
        Spacer()
        
        Circle()
            .fill(Color.pink)
            .frame(width: 100, height: 100)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            )
            .background(
                Circle()
                    .fill(Color.purple)
                    .frame(width: 110, height: 110)
            )
        
        Spacer()
        
        Rectangle()
            .frame(width: 100,height: 100)
            .overlay(
                Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
                , alignment: .topLeading
            )
            .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                , alignment: .bottomTrailing
            )
      
        Spacer()
        
        Text("Background and overlays")
            .background(
                //Color.red
               // LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100, alignment: .center)
            )
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 120, height: 120, alignment: .center)
        
                           )
        
        Spacer()
        
    }
}

#Preview {
    BackgroundAndOverlay()
}

/*
 
 
 
 
 */
