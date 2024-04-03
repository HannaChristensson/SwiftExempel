//  SwiftExempel
//  PaddingAndSpacerView.swift
//  Created by Hanna Christensson on 2024-01-25.
/*
 Undvika att hårdkoda, som tex frame med bestämda mått, tex 100, 100. Ligger frame på en text och texten blir längre men ramen har bestämt mått blir designen inte som tänkt. Bättre göra designen dynamisk så den ändras med input tex.
 Padding() har defaultvärde, går runt alla fyra kanter (lång version)
 Väljer man padding(edges, length)= .padding(.all, 10) (kort version)
 Välja vilka sidor padding ska vara på. .all är på alla, .vertical(top and bottom), .horizontal(left and right), .top, .bottom, .leading(vänster), .trailing(höger).
 .padding(.all, 10) och .padding(.leading, 20) ger 10 på alla sidor plus vänster 20 till
 .multilineTextAlignment(.leading) multilinetext är default .leading så den används bara om vi vill ändra från default .leading.
 
 */

import SwiftUI

struct PaddingAndSpacerView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Padding and spacer!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
                
        }
        .background(.blue)
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10)
        )
        .padding(.horizontal, 10)
        
       // .background(.green)
        
        //Ej använda modifiers till Text ovan
           // .frame(maxWidth: .infinity, alignment: .leading)
          //  .background(Color.red) //Utan bakgrundsfärg är texten kanske där vi vill ha den
            //.padding(.leading, 20)
            //.frame(width: 100, height: 100) ej hårdkoda för få frame/bakgrund
            //.background(Color.yellow)
           // .padding()
           // .padding(.all, 10)
           // .padding(.leading, 20)
            //.background(Color.blue)
    }
}


#Preview {
    PaddingAndSpacerView()
}
