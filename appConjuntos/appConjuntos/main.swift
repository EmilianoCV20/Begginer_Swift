//
//  main.swift
//  appConjuntos
//
//  Created by Emiliano Cepeda on 06/11/24.
//

import Foundation

let conjuntoVacio1:Set<Int> = []
print(conjuntoVacio1)

var conjuntoA:Set = [1,5,9,3]
print(conjuntoA)
for val in conjuntoA {
    print(val, terminator:" | ")
}
print()

//Pedir al usuario eliminar un numero del conjunto
print("Eliminar un numero del conjunto: ")
var n = Int(readLine()!)
if let valor = conjuntoA.remove(n!) {
    print("Valor eliminado: \(valor)")
    print(conjuntoA)
}
else {
    print("ELEMENTO NO ENCONTRADO")
}

//
conjuntoA.insert(9)
print(conjuntoA)
var conjuntoB:Set<Int> = []
for _ in 1...5 {
    conjuntoB.insert(Int(arc4random_uniform(100)))
}
print("Conjunto B")
print(conjuntoB)

//Union A B
print("Union A B")
var unionAB = conjuntoA.union(conjuntoB)
print("A: \(conjuntoA) U B: \(conjuntoB) = \(unionAB)")

var unionABS = unionAB.sorted()
print("A: \(conjuntoA) U B: \(conjuntoB) = \(unionABS)")

//Interseccion, Diferencia, diferencia simetrica
print("Interseccion")
var interseccionAB = conjuntoA.intersection(conjuntoB)
print("A: \(conjuntoA) U B: \(conjuntoB) = \(interseccionAB)")

print("Diferencia")
var diferenciaAB = conjuntoA.subtracting(conjuntoB)
print("A: \(conjuntoA) U B: \(conjuntoB) = \(diferenciaAB)")

print("Diferencia simetrica")
var diferenciaSimetricaAB = conjuntoA.symmetricDifference(conjuntoB)
print("A: \(conjuntoA) U B: \(conjuntoB) = \(diferenciaSimetricaAB)")

//Interseccion, Diferencia, Diferencia Simetrica (CLASE)
let frutas:Set<String> = ["🍏", "🍍", "🍌", "🍉", "🥝"]
let frutasYVerduras:Set<String> = ["🍏", "🍍", "🍌", "🍉", "🥝", "🥑","🍅","🍆","🥦","🌽","🥔","🥒"]

print("Frutas: ",frutas)
print("Frutas y Verduras: ",frutasYVerduras)

if frutas.isSuperset(of: frutasYVerduras) {
    print("Frutas es superconjunto de Frutas y Verduras")
} else {
    print("Frutas no es superconjunto de Frutas y Verduras")
}

if frutas.isSubset(of: frutasYVerduras) {
    print("Frutas es subconjunto de Frutas y Verduras")
} else {
    print("Frutas no es subconjunto de Frutas y Verduras")
}

print("Frutas es disjunto de frutas y verduras: ",frutas.isDisjoint(with: frutasYVerduras))

let animales:Set<String> = ["🦁", "🦊", "🙉", "🐶", "🕊️", "🐮", "🐻"]
print(animales)
print("Frutas es disjunto de animales: ",frutas.isDisjoint(with: animales))
