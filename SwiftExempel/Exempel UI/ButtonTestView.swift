//  SwiftExempel
//  ButtonTestView.swift
//  Created by Hanna Christensson on 2024-01-18.
/*
 Two views have the same width: fixedSize (exempel nedan med buttons)
 
 */

import SwiftUI

struct ButtonTestView: View {
    
    var body: some View {
       Spacer()
        
        Button(action: {
            //Execute action
        }, label: {
            Image("PurpleBill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 40)
        })
        
        Button {
            //Execute action
        } label: {
            Image(systemName: "square.and.arrow.up")
            Text("Upload")
        }
        .buttonStyle(.bordered)
        Button {
            //Execute action
        } label: {
            Image(systemName: "square.and.arrow.up")
        }
        .buttonStyle(.borderedProminent)
        
        
        Button("bordered") {
            //Execute action
        }
        .buttonStyle(.bordered)
        .font(Font.system(size: 30))
        .foregroundStyle(.red)
        
        Button("borderedProminent and green") {
            //Execute action
        }
        .buttonStyle(.borderedProminent)
        .tint(.green)
        
        Button("Borderless") {
            //Execute action
        }
        .buttonStyle(.borderless)
        .bold()
        
        Button("Plain") {
            
        }
        .buttonStyle(.plain)
        
        Button("Automatic") {
            
        }
        .buttonStyle(.automatic)
        
        
        
        
        Spacer()
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
