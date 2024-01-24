//  SwiftExempel
//  ListView.swift
//  Created by Hanna Christensson on 2024-01-23.

/*     LIST
 Så här kommer listan ut om man högerklickar på texten och väljer embed in list. Hello worl kommer då på fem rader i en lista.
 List(0..< 5) { item in
    Text("Hello world")
 }
 
 id: \.self innebär att få ett id för varje sak
 
 Append, move, remove till listan
 
 */


import SwiftUI

struct ListView: View {
    
    @State var fruits: [String] = ["Äpple", "Apelsin", "Banan", "Persika"]
    @State var veggies: [String] = ["Tomat", "Potatis", "Morot"]
    
    var body: some View {
        
        
        NavigationStack {
            List {
                
                Section(
                    header: 
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundStyle(.orange)
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundStyle(.white)
                                .padding(.vertical)
                                //.frame(maxWidth: .infinity, maxHeight: .infinity)
                                //.background(Color.pink)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.blue)
                    }
                //Denna section är inte kopplad till funktionerna nedan
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
                
            }
            .foregroundStyle(.indigo)
            .navigationTitle("Inköpslista")
            .navigationBarItems(leading: EditButton(),trailing: addButton)
            //.listStyle(InsetGroupedListStyle())
            //.toolbar(content: {
           //     EditButton()
           // })
            
        }
        .tint(.green)
        
        
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
        .foregroundStyle(.green)
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    // Logic for add
    func add() {
        fruits.append("Coconut")
    }
    
}

#Preview {
    ListView()
}
