//  SwiftExempel
//  SpacerView.swift
//  Created by Hanna Christensson on 2024-01-26.
/*
 Spacer resizes as big as possible within the frame
 If there are multiple spacer in the same stack, all the spacers will resize to be automatically the same size.
 Spacer default minimal length 8 or 10.
 Spacer(minLength: nil)
 Kan sätta minLength: 0
 */

import SwiftUI

struct SpacerView: View {
    var body: some View {
        
        VStack {
            HStack(alignment: .center, spacing: 0, content: {
                
                Image(systemName: "xmark")
             
                Spacer()
                    
                
                Image(systemName: "gear")
  
            })
            .font(.title)
            //.background(Color.yellow)
            .padding(.horizontal)
           // .background(Color.blue)
        
            Spacer()
             
           
            Rectangle()
                .frame(height: 55)
            
        }
       // .background(Color.yellow)
    }
}

#Preview {
    SpacerView()
}

/*
 Spacer(minLength: 0)
     .frame(height: 10)
     .background(Color.orange)
 
 Rectangle()
     .frame(width: 50, height: 50)
 
 Spacer()
     .frame(height: 10)
     .background(Color.orange)
 
 Rectangle()
     .fill(Color.red)
     .frame(width: 50, height: 50)
 
 Spacer()
     .frame(height: 10)
     .background(Color.orange)
 
 Rectangle()
     .fill(Color.green)
     .frame(width: 50, height: 50)
 
 Spacer(minLength: 0)
     .frame(height: 10)
     .background(Color.orange)
 
 
 
 */
