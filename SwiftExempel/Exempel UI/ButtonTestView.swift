//  SwiftExempel
//  ButtonTestView.swift
//  Created by Hanna Christensson on 2024-01-18.
/*
 Two views have the same width: fixedSize (exempel nedan med buttons)
 */

import SwiftUI

struct ButtonTestView: View {
    
    var body: some View {
       
        Button("Knapp utan fixed size") { }
            .foregroundStyle(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(.red)
            .clipShape(Capsule())
        VStack {
            Button("Log in") { }
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.red)
                .clipShape(Capsule())

            Button("Reset Password") { }
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.red)
                .clipShape(Capsule())
        }
        .fixedSize(horizontal: true, vertical: false)
    }
}

#Preview {
    ButtonTestView()
}
