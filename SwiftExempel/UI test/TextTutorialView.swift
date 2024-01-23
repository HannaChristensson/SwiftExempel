//  SwiftExempel
//  TextTutorialView.swift
//  Created by Hanna Christensson on 2024-01-22.


import SwiftUI

struct TextTutorialView: View {
    
    var body: some View {
        
        Text("Text design .serif")
           // .font(.body)
          //  .fontWeight(.heavy) // tjockhet på bokstäver
          //  .bold()
          //  .underline(true, color: .red)
          //  .italic()
          //  .strikethrough(true, color: .green)
            .font(.system(size: 24, weight: .semibold, design: .serif))
        
        Text("Text design .monospaced")
            .font(.system(size: 24, weight: .semibold, design: .monospaced))
        Text("Text design .rounded")
            .font(.system(size: 24, weight: .semibold, design: .rounded))
       
        Text("MultilineTextAligntment hur se ut när det är en längre text över flera rader. Tex .leading. BaselineOffset är hur mkt mellanrum mellan raderna. Kerning är hur mkt mellanrum mellan bokstäverna.")
            .baselineOffset(10)
            .kerning(1)
            .multilineTextAlignment(.center)
            .padding()
            .foregroundColor(.blue)
            .frame(width: 300, height: 400)
            .minimumScaleFactor(0.8)
        
        Text("Stora bokstäver" .uppercased())
        Text("SMÅ BOKSTÄVER".lowercased())
        
        
        Text(".gradient bakom text")
            //.font(.system(size: 24, weight: .semibold, design: .serif))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(.white)
            .background(.red.gradient)
    }
}

#Preview {
    TextTutorialView()
}
