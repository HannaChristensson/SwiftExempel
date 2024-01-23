//      SwiftExempel
//  NavigationView.swift
//  Created by Hanna Christensson on 2024-01-23.
/*
 NavigationView: Lägg aldrig en NavigationView i en NavigationView
 NavigationStack:
 NavigationLink:
 Toolbar: 
 Om man väljer NavigationLink med title och destination. Så klickar man på titel "Next page" nedan så kommer man till nästa sida och texten "Second screen kommer upp på nästa sida. Också navigationTitle står där.
 .navigationBarItems kommer bli deprecated. Använd toolbar(_:) with navigationBarLeading or navigationBarTrailing placement
 .accentColor(.red) will be deprecated. Use the asset catalogs accent color or View.tint(_:) instead
 */

import SwiftUI

struct NavigationView: View {
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                
                NavigationLink("Next page", destination: MyOtherScreen())
                
                Text("Bolåneuträkning")
                Text("Nota med dricks")
                Text("Kalkylator")
            }
            .navigationTitle("Menyval")
            
            .navigationBarItems(
                leading: 
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                    
                    ,
                trailing: NavigationLink(destination: MyOtherScreen(), label: {
                    Image(systemName: "gear")
                })
               // .accentColor(.red)
                .tint(.red)
              )
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)  //NavTitle försvann
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Image(systemName: "person.fill")
                        .foregroundStyle(.green)
                    Button("Second") {
                        print("Pressed second")
                    }
                    .tint(.green)
                    
                }
                
            }
        }
        
    }
}

struct MyOtherScreen: View {
    //presentationMode deprecated soon, välj isPresented
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
                //.navigationBarHidden(true)
            
            VStack {
                //Button("BACK BUTTON") {
                //    presentationMode.wrappedValue.dismiss()
               // }
                NavigationLink("Klicka här") {
                    Text("Third screen! ")
                }
            }
        }
    }
}


#Preview {
    NavigationView()
}
