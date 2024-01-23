//  SwiftExempel
//  GradientBackgroundView.swift
//  Created by Hanna Christensson on 2024-01-22.


import SwiftUI

struct GradientBackgroundView: View {
    var body: some View {
        
        ZStack {
           
            AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Testar AngularGradient som bakgrund")
                    .font(.headline)
                    .padding()
                Spacer()
            }
            
            
            //LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
            
            //LinearGradient(stops: [
            //    Gradient.Stop(color: .white, location: 0.45),
            //    Gradient.Stop(color: .blue, location: 0.55)
       //     ], startPoint: .top, endPoint: .bottom )
            
            //RadialGradient(colors: [.mint, .blue], center: .center, startRadius: 20, endRadius: 200)
        }
        
        //AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
            
    }
}

#Preview {
    GradientBackgroundView()
}
