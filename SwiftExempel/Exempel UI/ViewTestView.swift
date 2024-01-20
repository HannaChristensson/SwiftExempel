//
//  ViewTestView.swift
//  SwiftExempel
//
//  Created by Hanna Christensson on 2024-01-17.
//

import SwiftUI

struct ViewTestView: View {
    
    var body: some View {
        VStack {
            Text("Testa vertikal stack")
        }
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .background(Color(.systemPink).opacity(0.3))
        .frame(maxHeight: 200)
        
        HStack {
            Text("Testa horisontell stack")
        }
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .background(Color(.systemIndigo).opacity(0.3))
        .frame(maxHeight: 200)
        
        ZStack {
            Text("Testa z-stack, ovanpå varandra")
        }
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .background(Color(.systemMint).opacity(0.3))
        //.fixedSize(horizontal: false, vertical: true)
        .frame(maxHeight: 200)
        
        HStack {
            Text("This is a short string.")
                .padding()
                .frame(maxHeight: .infinity)
                .background(.red)

            Text("This is a very long string with lots and lots of text that will definitely run across multiple lines because it's just so long.")
                .padding()
                .frame(maxHeight: .infinity)
                .background(.green)
        }
        .fixedSize(horizontal: false, vertical: true)
        .frame(maxHeight: 200)
    }
}

#Preview {
    ViewTestView()
}
