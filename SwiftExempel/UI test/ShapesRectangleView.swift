//
//  ShapesRectangleView.swift
//  SwiftExempel
//
//  Created by Hanna Christensson on 2024-01-22.
//

import SwiftUI

struct ShapesRectangleView: View {
    var body: some View {
        
        
        Rectangle()
            .frame(width: 200, height: 100)
            .foregroundColor(.purple)
        Rectangle()
            .frame(width: 200, height: 100)
            .foregroundColor(.pink)
        Rectangle()
            .frame(width: 200, height: 100)
            .foregroundColor(.mint)
    }
}

#Preview {
    ShapesRectangleView()
}
