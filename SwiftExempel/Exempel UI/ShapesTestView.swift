//  SwiftExempel
//  ShapesTestView.swift
//  Created by Hanna Christensson on 2024-01-17.


import SwiftUI

struct ShapesTestView: View {
    var body: some View {
        
        ZStack {
            Ellipse()
                .fill(.blue)
                .frame(width: 100, height: 50)
        }
    }
}

#Preview {
    ShapesTestView()
}
