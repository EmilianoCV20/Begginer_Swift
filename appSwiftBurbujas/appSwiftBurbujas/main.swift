//
//  main.swift
//  appSwiftBurbujas
//
//  Created by Emiliano Cepeda on 05/11/24.
//

import Foundation

//Implementar un metodo para aplicar el ordenamiento burbuja a un arreglo
func burbujaclase( arrayN : Array<Int> ) -> Array<Int> {
    var arrayAux:[Int] = []
    if arrayN.isEmpty {
        return arrayAux
    }
    arrayAux = arrayN
    for _ in 0..<arrayN.count-1 {
        for j in 0..<arrayN.count-1 {
            var aux = 0
            if (arrayAux[j] > arrayAux[j+1]) {
                aux = arrayAux[j]
                arrayAux[j] = arrayAux[j+1]
                arrayAux[j+1] = aux
            }
        }
    }
    return arrayAux
}

//Metodo 2
func burbuja(vec:inout Array<Int>)
{
    var aux = 0
    for _ in 0..<vec.count-1{
        for j in 0..<vec.count-1{
            if (vec[j] > vec[j+1])
            {
                aux = vec[j]
                vec[j] = vec[j+1]
                vec[j+1] = aux
            }
        }
    }
}

//Clase propia
/*
func burbuja(_ array: inout [Int]) {
    let n = array.count
    var swapped: Bool
    repeat {
        swapped = false
        for i in 0..<n-1 {
            if array[i] > array[i+1] {
                array.swapAt(i, i+1)
                swapped = true
            }
        }
    } while swapped
}
*/

var arrayNumeros: [Int] = []
for _ in 1...10 {
    arrayNumeros.append(Int.random(in: 10...100))
}
print("Datos sin orden")
print(arrayNumeros)
print("Datos ordenados")
arrayNumeros = burbujaclase(arrayN: arrayNumeros)
print(arrayNumeros)

arrayNumeros.removeAll()
for _ in 1...10 {
    arrayNumeros.append(Int.random(in: 10...100))
}
print("Datos sin orden 2")
print(arrayNumeros)
print("Datos ordenados 2")
burbuja(vec: &arrayNumeros)
print(arrayNumeros)
