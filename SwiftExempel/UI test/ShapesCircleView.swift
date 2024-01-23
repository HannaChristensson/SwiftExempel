//  SwiftExempel
//  ShapesTutorialView.swift
//  Created by Hanna Christensson on 2024-01-22.


import SwiftUI

struct ShapesCircleView: View {
    
    var body: some View {
        HStack {
            Circle()
            Circle()
                .fill(.green)
            Circle()
                .foregroundColor(.pink)
        }
        HStack {
            Circle()
                .foregroundColor(.accentColor)
            Circle()
                .stroke()
            Circle()
                .stroke(.red)
        }
        HStack {
            Circle()
                .stroke(.purple, lineWidth: 30)
            Circle()
                .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
            Circle()
                .trim(from: 0.2, to: 1.0)
                .stroke(.mint, lineWidth: 20)
        }
        
        ZStack {
            Circle()
                .trim(from: 0.2, to: 1.0)
                .stroke(.mint, lineWidth: 20)
            Text("Test Zstack och circle under, text i/över")
        }
       
    }
}

#Preview {
    ShapesCircleView()
}
