//
//  ShapesCapsuleView.swift
//  SwiftExempel
//
//  Created by Hanna Christensson on 2024-01-22.
//

import SwiftUI

struct ShapesCapsuleView: View {
    var body: some View {
        
        Capsule(style: .circular)
            .stroke(.blue, lineWidth: 30)
            .frame(width: 200, height: 100)
        
    }
}

#Preview {
    ShapesCapsuleView()
}
