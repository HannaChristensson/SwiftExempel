//  SwiftExempel
//  ViewsExempelView.swift
//  Created by Hanna Christensson on 2024-01-17.

/*
 Views are used to build the different elements that make up the screen of an app reffered to as the User Interface (UI).
 
    VStack - for stacking other views vertically
    HStack - for stacking other views horizontally
    ZStack - for stacking views on top of each other
    Text - will add any text to your screen including emojis
    Image - will allow you to use any of the built-in images, or add your own
    Spacer - a view that will fill as much space as possible
 
                        EXEMPEL NEDAN :)
 */

import SwiftUI

struct ViewsExempelView: View {
    
    var myName = "Hanna"
    
    var body: some View {
        VStack(alignment: .leading) {
        Text("Hello, world!")
        Text("🦄")
        Text(myName)
        }
        .font(.title)
        Spacer()
        
        HStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Image("rosa ros")
                .scaleEffect(1.0 / 15.0)
                .frame(width: 100, height: 100)
            Image(systemName: "wineglass")
                .foregroundColor(.red)
                //.foregroundStyle(.tint)
        }
        .font(.title)
        
        Spacer()
        
        ZStack {
            Circle()
                .fill(.green)
                .frame(width: 200, height: 200)
            Circle()
                .fill(.blue)
                .frame(width: 150, height: 150)
            Circle()
                .fill(.red)
                .frame(width: 100, height: 100)
            Circle()
                .fill(.yellow)
                .frame(width: 50, height: 50)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .background(Color(.systemMint).opacity(0.3))
        .padding()
    }
}

#Preview {
    ViewsExempelView()
}
