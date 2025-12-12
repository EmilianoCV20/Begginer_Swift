//
//  ContentView.swift
//  appSwiftUI_1
//
//  Created by Emiliano Cepeda on 28/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            VStack {
                //Image("pavorreal2")
                Image(.pavorreal2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                
                Image(systemName: "globe")
                    .resizable()
                    .imageScale(.small)
                    .foregroundStyle(.tint)
                
                Text("Hello, world!").padding()
                
                Text("Tec").padding()
                
                Text("Placeholder").padding()
                
                ColorPicker("Color", selection: .constant(.red))
            }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
