//  SwiftExempel
//  FrameView.swift
//  Created by Hanna Christensson on 2024-01-24.
/*
 .frame(width: 300, height: 300, alignment: .leading)
 .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
 */

import SwiftUI

struct FrameView: View {
    var body: some View {
        
        Text("Hello, World!")
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
                   
        
    }
}

#Preview {
    FrameView()
}
