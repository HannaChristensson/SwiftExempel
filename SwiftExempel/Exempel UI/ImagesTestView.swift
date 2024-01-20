//
//  ImagesTestView.swift
//  SwiftExempel
//
//  Created by Hanna Christensson on 2024-01-17.
//

import SwiftUI

struct ImagesTestView: View {
    
    var body: some View {
        
        Text("BILDER/IMAGES")
        HStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Image("rosa ros")
                .scaleEffect(1.0 / 15.0)
                .frame(width: 100, height: 100)
            
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 50, height: 50)
            
            Image(systemName: "wineglass")
                .foregroundColor(.red)
                //.foregroundStyle(.tint)
        }
        .font(.title)
        
        
    }
}

#Preview {
    ImagesTestView()
}
