//  SwiftExempel
//  ShapesEllipseView.swift
//  Created by Hanna Christensson on 2024-01-22.


import SwiftUI

struct ShapesEllipseView: View {
    
    var body: some View {
        
        
        Ellipse()
            .trim(from: 0.2, to: 1.0)
            .frame(width: 200, height: 100)
            .foregroundColor(.red)
            
        
        Ellipse()
            .trim(from: 0.2, to: 1.0)
            .stroke(.mint, lineWidth: 20)
            .frame(width: 200, height: 100)
        
        Ellipse()
            .stroke(.blue, lineWidth: 30)
            .frame(width: 200, height: 100)
        
        
       
        
    }
}

#Preview {
    ShapesEllipseView()
}
