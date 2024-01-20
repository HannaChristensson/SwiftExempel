//  SwiftExempel
//  ShapesTestView.swift
//  Created by Hanna Christensson on 2024-01-17.


import SwiftUI

struct ShapesTestView: View {
    var body: some View {
       
            Circle()
                .stroke(.blue, lineWidth: 45)
                .stroke(.green, lineWidth: 35)
                .stroke(.yellow, lineWidth: 25)
                .stroke(.orange, lineWidth: 15)
                .stroke(.red, lineWidth: 5)
                .frame(width: 150, height: 150)
            /*Circle()
                .offset(x: -100)
                .symmetricDifference(.circle.offset(x: 100))
                .fill(.red)
                .padding()
            
            Circle()
                .lineSubtraction(.rect.inset(by: 20))
                .stroke(style: .init(lineWidth: 20, lineCap: .round))
                .padding()
            
           */
        
       
        Spacer()
        
        ZStack {
            Rectangle()
                .fill(.gray)
                .frame(width: 200, height: 200)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(.red)
                .frame(width: 175, height: 175)
            
            UnevenRoundedRectangle(cornerRadii: .init(topLeading: 50, topTrailing: 50))
                .fill(.orange)
                .frame(width: 125, height: 125)
            Capsule()
                .fill(.green)
                .frame(width: 100, height: 50)
            Ellipse()
                .fill(.blue)
                .frame(width: 100, height: 50)
            Circle()
                .fill(.white)
                .frame(width: 100, height: 50)
                
        }
    }
}

#Preview {
    ShapesTestView()
}

/* De ska överlappa, capsule ska sticka ut från circle.
 Circle()
     .union(.capsule.inset(by: 100))
     .fill(.blue)
 
 Circle()
     .stroke(.red, lineWidth: 20)
     .fill(.orange)
     .frame(width: 150, height: 150)
 
 
 */
