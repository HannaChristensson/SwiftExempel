//
//  ZStackBackgroundColor.swift
//  SwiftExempel
//
//  Created by Hanna Christensson on 2024-01-23.
//

import SwiftUI

struct ZStackBackgroundColor: View {
    var body: some View {
        
        ZStack {
            Color(.pink).ignoresSafeArea()
            
            VStack {
                Text("ZStack background")
                    .foregroundStyle(.black)
                    
                VStack {
                    Button("Log in") { }
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.mint)
                        .clipShape(Capsule())

                    Button("Reset Password") { }
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.mint)
                        .clipShape(Capsule())
                }
                .fixedSize(horizontal: true, vertical: false)
                
            }
            .font(.title)
        }
        //.background(.linearGradient(colors: [.green, .red], startPoint: .top, endPoint: .bottom))
       //.ignoresSafeArea()
    }
}

#Preview {
    ZStackBackgroundColor()
}
