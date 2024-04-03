//      SwiftExempel
//  StacksView.swift
//  Created by Hanna Christensson on 2024-01-25.
/*
 
 VStack: Vertikal. Default alignment .center och spacing nil=8.
 Välj VStack(alignment: .center, spacing: nil, content:{ }
 Du kan nu ändra .center och spacing. Vill du inte ha default spacing 8 så ändra till 0.
 
 HStack: Horizontal. Default alignment: , spacing: nil
 
 ZStack: zIndex (back to front). Default alignment: .center,
 
 */

import SwiftUI

struct StacksView: View {
    var body: some View {
        
        VStack(spacing: 50) {
            
            ZStack(alignment: .center, content: {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundStyle(.white)
            })
            
            Text("1")
                .font(.title)
                .foregroundStyle(.white)
                .background(
                Circle()
                    .frame(width: 100, height: 100)
                )
            
            
        }
        
       
        
        
      /*
        VStack(alignment: .center, spacing: 20, content: {
            Text("5: ")
                .font(.largeTitle)
                .underline()
            Text("Items in your cart: ")
                .font(.caption)
                .foregroundStyle(.gray)
           
        })
        */
        /*
        ZStack(alignment: .top, content: {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            
            VStack(alignment: .leading, spacing: 30, content: {
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom, spacing: nil, content: {
                    Rectangle()
                        .fill(Color.purple)
                    .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75)
                    Rectangle()
                        .fill(Color(.blue))
                        .frame(width: 25, height: 25)
                })
                .background(Color.white)
            })
            .background(Color.black
            )
        })
        
      */
    /*    ZStack(alignment: .trailing, content: {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(Color.green)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }) */
        
        
        
        
        
        
        
    }
}

#Preview {
    StacksView()
}
