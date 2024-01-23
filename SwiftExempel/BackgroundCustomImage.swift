//  SwiftExempel
//  BackgroundCustomImage.swift
//  Created by Hanna Christensson on 2024-01-22.

//  Custom image är ananasbilden nedan

import SwiftUI

struct BackgroundCustomImage: View {
    var body: some View {
        VStack {
            
            Text("Frukt Quiiiiiiz!!!")
                .foregroundColor(.white)
                .font(.system(size: 44, weight: .bold, design: .serif))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                
        }
        .background(Image("Ananas1"))
        .edgesIgnoringSafeArea(.all)
        //.background(Color.green)
        //.background(.indigo.gradient)
    }
}

#Preview {
    BackgroundCustomImage()
}
