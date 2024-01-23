//  SwiftExempel
//  MenuView.swift
//  Created by Hanna Christensson on 2024-01-20.
/*
 
 */

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        VStack {
            Menu("Klicka här") {
                
                Button(("One")) {
                    
                }
                Button(("Two")) {
                    
                }
                Button(("Three")) {
                    
                }
                Button(("Four")) {
                    
                }
            }
            .font(.system(size: 44, weight: .semibold, design: .serif))
            .foregroundColor(.mint)
        }
        
        
        
        
    }
}

#Preview {
    MenuView()
}
