//  SwiftExempel
//  ShapesRoundedRectangleView.swift
//
//
//  Created by Hanna Christensson on 2024-01-22.
//

import SwiftUI

struct ShapesRoundedRectangleView: View {
    var body: some View {
        
        
        RoundedRectangle(cornerRadius: 50)
            .foregroundColor(.pink)
            .frame(width: 300, height: 200)
        
        RoundedRectangle(cornerRadius: 50)
            .foregroundColor(.purple)
            .frame(width: 300, height: 200)
        RoundedRectangle(cornerRadius: 50)
            .foregroundColor(.mint)
            .frame(width: 300, height: 200)
        
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .trim(from: 0.4, to: 1.0)
                .fill(.yellow.opacity(0.4))
                .frame(width: 300, height: 200)
                
            Circle()
                .stroke(.mint, lineWidth: 20)
        }
        
    }
}

#Preview {
    ShapesRoundedRectangleView()
}
