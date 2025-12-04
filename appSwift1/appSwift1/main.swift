//
//  main.swift
//  appSwift1
//
//  Created by Emiliano Cepeda on 30/10/24.
//

import Foundation

//print("Hello, World!")

var n1 = 100
var n2 = 50

var result = n1 ^ n2

print("n1: \(n1) ^ n2: \(n2) = \(result)")

//Definir constantes
let binario = String(result, radix: 2)
print("\tBinario: \(result) = \(binario) \n")

let octal = String(result, radix: 8)
print("\tDecimal: \(result) = \(octal) Octal\n")

//Hexadecimal
let hexadecimal = String(result, radix: 16)
print("\tHexadecimal: \(result) = \(hexadecimal) \n")

//Aplicar los operadores AND y OR en el print
print("\tAND: \(n1) & \(n2) = \(n1 & n2) \n")
//print("\tAND: \(n1) & \(n2) = ", n1 & n2)
print("\tOR: \(n1) | \(n2) = \(n1 | n2) \n")
//print("\tOR: \(n1) | \(n2) = ", n1 | n2)

//Binario
let binario2 = "10101010"

//Binario 2 en hexa y decimal
let numHexa = String(Int(binario2, radix: 2)!, radix: 16)
print("Binario2 = \(binario2) = \(numHexa) Hexadecimal\n")
//let binario2Hexa = Int(binario2, radix: 2)
//print("\tBinario 2 en hexa: \(binario2) = \(String(describing: binario2Hexa)) \n")
let binario2Decimal = Int(binario2, radix: 10)
print("\tBinario 2 en decimal: \(binario2) = \(String(describing: binario2Decimal)) \n")

//TutorialsPoint
// Decimal integer literal
let num1 = 34
print("Decimal Integer: \(num1)")

// Binary integer literal
let num2 = 0b101011
print("Binary Integer: \(num2)")

// Octal integer literal
let num3 = 0o52
print("Octal Integer: \(num3)")

// Hexadecimal integer literal
let num4 = 0x2C
print("Hexadecimal Integer: \(num4)")

// Decimal floating-point literal
let num5 = 32.14
print("Decimal Float: \(num5)")

// Exponential notation floating-point literal
let num6 = 2.5e3
print("Exponential Float: \(num6)")

// Hexadecimal floating-point literal
let num7 = 0x1p-2
print("Hexadecimal Float: \(num7)")

//---
print("-----")
//Rango CERRADO
print("Rango One Side")
let rangoOneSide1 = ...5
print(rangoOneSide1.contains(-10000))
print(rangoOneSide1.contains(4))
print(rangoOneSide1.contains(7))


//Rango ABIERTO
print("Rango Abierto, One Side")
let rangoAbierto1 = 5...
print(rangoAbierto1.contains(1))
print(rangoAbierto1.contains(20000))
print(rangoAbierto1.contains(6))

//Rango CERRADO
print("Rango Cerrado")
let rangoMedio1 = 5...10
print(rangoMedio1.contains(5))
print(rangoMedio1.contains(6))

//Rango MEDIO-ABIERTO
print("Rango Medio Abierto")
let rangoMedioAbierto1 = 5..<10
print(rangoMedioAbierto1.contains(9))
print(rangoMedioAbierto1.contains(6))

//EJEMPLO CON CADENA
var cadena = "TEC Laguna"
var cadAux: String = ""

var caracteres = Array(cadena)

//Imprimir caracter por caracter
for i in 0..<caracteres.count {
    let car = String(caracteres[i])
    cadAux += car.lowercased()
    print(cadAux)
}
//print(cadAux)
print("-----")

//Eliminar caracter por caracter v1
for i in 0..<caracteres.count {
    cadAux.removeLast()
    print(cadAux)
}
//print(cadAux)
