//
//  ContentView.swift
//  appSwiftUIFactorial
//
//  Created by Emiliano Cepeda on 04/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numero: String = ""
    @State private var resultado: String = ""
    @State private var num: Double = 0
    
    var body: some View {
        
        VStack {
            Text("Factorial")
                .font(.largeTitle)
                .bold()
            TextField("Ingrese un numero", text: $numero)
                .keyboardType(.numberPad)
                .padding()
                .background(Color(.cyan))
                .cornerRadius(20)
                .padding(.horizontal)
            Button(action: {
                if let num = Int(numero){
                    resultado = "Factorial de \(num) = \(factorial(num))"
                } else {
                    resultado = "Numero NO valido"
                }
            })
            {
                Text("Calcular")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(15)
            }
            Text(resultado)
                .font(.title2)
                .padding()
                .multilineTextAlignment(.center)
        }
        VStack {
            Text("Usando Slider")
                .font(.headline)
                .padding(.top)
            
            Slider(value: $num, in: 0...20, step: 1)
            let num2 = Int(num)
            Text("Valor: \(Int(num)) = \(factorial(num2))")
                .foregroundStyle(.black)
                .padding(.horizontal, 10)
                .background(Capsule().stroke(Color.blue, lineWidth: 3))
            
            Button(action: {
                let num2 = Int(num)
                resultado = "Factorial de \(num2) = \(factorial(num2))"
            }) {
                Text("Calcular")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(15)
            }
        }
        //.padding()
    } //Fin del View
    
    func factorial(_ num: Int) -> Int {
        if num == 0 || num == 1 {
            return 1
        } else {
            return num * factorial(num - 1)
        }
    }
}

#Preview {
    ContentView()
}
