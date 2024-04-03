//  SwiftExempel
//  AngularGradientView.swift
//  Created by Hanna Christensson on 2024-01-22.


import SwiftUI

struct AngularGradientView: View {
    var body: some View {
        
        AngularGradient(
            gradient: Gradient(colors: [Color.red, Color.blue]),
            center: .topLeading,
            angle: .degrees(180 + 45))
        .ignoresSafeArea()
    }
}

#Preview {
    AngularGradientView()
}
