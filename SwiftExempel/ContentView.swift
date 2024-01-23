//  SwiftExempel
//  ContentView.swift
//  Created by Hanna Christensson on 2024-01-17.

/*
 Swift: general-purpose coding language, code is read from top to bottom.
    Print() is used to output to the terminal
    Making comments is good for memory and helping others read,
 single line comments is used with //
 // One row
 // one moore
 
 multiline comments is used with /* */
 /*
  Here you write the comments
  Here two
  */
 Swift source code files are typically given the suffix .swift
 
 Naming conventions:
    Camel Case is correct. The first character in every following word is uppercased.
    Right: let myNameIs = "Hanna"
    Wrong: let thisisyourname = "Bengt"
    Wrong Snake case: let this_is_snake_case = "Hello Snake"
    Wrong Pascal case: let ThisIsPascalCase = "Hello Pascal"
 */




import SwiftUI

struct ContentView: View {
    

    var body: some View {
        VStack {
            
            
            GradientBackground()
            
        }
    }
}

#Preview {
    ContentView()
}



