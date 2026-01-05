//
//  ContentView.swift
//  appSwiftUI_Slider
//
//  Created by Emiliano Cepeda on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var celsius: Double = 0
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                
                Slider(value: $celsius, in: -100...100)
                Text("\(celsius, specifier: "%.2f") °C = \(celsius * 9/5 + 32, specifier: "%.2f") °F")
                    .foregroundStyle(.white)
                    .padding(.horizontal,10)
                    .background(Capsule().stroke(Color.blue, lineWidth:3))
                
            }
            .background(Color(red:0.2, green:0.2, blue:0.8))
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
