//      SwiftExempel
//  GradientBackground.swift
//  Created by Hanna Christensson on 2024-01-23.
//

import SwiftUI

struct GradientBackground: View {
    
    @State private var animateGradient: Bool = false
    
    //var startColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    //var endColor = #colorLiteral(red: 0.7420857549, green: 0.2118167579, blue: 1, alpha: 1)
    
    private let startColor: Color = .purple
    private let endColor: Color = .indigo
    
    var body: some View {
        
        
        VStack(spacing: 20) {
            Image(systemName: "swift")
                .font(.system(size: 72, weight: .light))
                .padding(.top, 80)
                .padding(.bottom, 64)
            
            Text("Gradient background animation in SwiftUI")
                .font(.title)
                .bold()
            
            Text("It is a visual effect where the colors of a gradient background transition over time")
                .fontWeight(.thin)
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "arrow.right")
            }
            .frame(width: 50, height: 50)
                .background(Color.white)
                .cornerRadius(25)
                .padding(10)
                .overlay {
                    Circle()
                        .stroke(style: StrokeStyle(lineWidth: 1))
                        .foregroundColor(.white)
                }
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .foregroundColor(.black)
        .padding(.horizontal)
        .multilineTextAlignment(.center)
        // Background of VStack. startColor, endColor egen variabel ovan
        .background {
            LinearGradient(
                colors: [startColor, endColor],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            //.edgesIgnoringSafeArea(.all)
            .ignoresSafeArea(.all)
            .hueRotation(.degrees(animateGradient ? 45 : 0))
            .onAppear {
                withAnimation(.easeInOut(duration: 5).repeatForever(autoreverses: true)) {
                    animateGradient.toggle()
                }
            }
        }
        
    }
}

#Preview {
    GradientBackground()
}
