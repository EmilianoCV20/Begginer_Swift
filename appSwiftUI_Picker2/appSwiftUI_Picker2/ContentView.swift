//
//  ContentView.swift
//  appSwiftUI_Picker2
//
//  Created by Emiliano Cepeda on 06/12/24.
//

import SwiftUI

//struct ContentView: View {...}
struct VentaDeHelados: View {
    @State private var saborSeleccionado = sabor.chocolate
    var body: some View {
        Picker("Sabor", selection: $saborSeleccionado){
            Text("🍫Chocolate🍫").tag(sabor.chocolate)
            Text("🍦Vainilla🍦").tag(sabor.vainilla)
            Text("🍓Fresa🍓").tag(sabor.fresa)
            Text("🍇Uva🍇").tag(sabor.uva)
            Text("🍋Limon🍋").tag(sabor.limon)
        }
        Text("Sabor Seleccionado: \(saborSeleccionado.rawValue)")
        
    }
}

enum sabor: String, CaseIterable, Identifiable {
    case chocolate
    case vainilla
    case fresa
    case uva
    case limon
    
    var id: String { self.rawValue }
    
}

//IMPLEMENTAR UNA APP PARA MANEJAR EXPRRESIONES REGULARES
//UTILIZANDO: SEGMENTED O PICKER VIEW

#Preview {
    //ContentView()
    VentaDeHelados()
}
