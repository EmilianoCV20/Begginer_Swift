//
//  ContentView.swift
//  appSwiftUI_Textfield
//
//  Created by Emiliano Cepeda on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var entrada: String = ""
    
    var body: some View {
        Group {
            TextField("Escriba aquí", text: $entrada)
                .frame(height: 60.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(.red)
            
            if !entrada.isEmpty {
                Text("Su entrada fue: \(entrada)")
                    .textCase(.uppercase)
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
