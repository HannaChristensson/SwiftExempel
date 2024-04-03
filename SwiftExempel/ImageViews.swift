//  SwiftExempel
//  ImageViews.swift
//  Created by Hanna Christensson on 2024-01-24.
/*    IMAGES
 .clipped
 
 .renderingMode(.template) för att kunna ändra färg på en bild. Bilden behöver ha en transparent background. Man kan även ändra i assets - Render As - ändra till Template Image. Då behöver man inte lägga till modifiern varje gång man ska använda bilden, den är redan inställd på det.
 */

import SwiftUI

struct ImageViews: View {
    
    
    var body: some View {
        
       // Image("")
        //   .resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
         //   .scaledToFill()
          //  .frame(width: 300, height: 300)
            //.clipped()
            //.cornerRadius(150)
            //.clipShape(Circle())
        
        Image("google")
            //.renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundStyle(.green)
        
        Image("bill")
            .foregroundStyle(.purple)
        Image("dices")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 100)
            .foregroundStyle(.mint)
            
    }
}

#Preview {
    ImageViews()
}
