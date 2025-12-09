//
//  main.swift
//  appFuncionesSwift
//
//  Created by Emiliano Cepeda on 04/11/24.
//

import Foundation

//Metodo Mayor-menor
func mayorMenor(array:[Int])->(mayor:Int,menor:Int){
    var mayor = array[0]
    var menor = array[0]
    
    for num in array[1..<array.count]{
        
        if num>mayor{
            mayor = num
        } else if num<menor{
            menor = num
        }
        
    }
    return (mayor,menor)
}

print("Funcion Mayor-Menor")
var arreglo = [80,60,90,70,10]
print("Arreglo: \(arreglo)")
let resul1 = mayorMenor(array: arreglo)
print("Mayor:\(resul1.mayor),Menor:\(resul1.menor)")

//Metodo para multiplicar 2 numeros dobles
func multiplicarDobles( n1:Double, n2:Double)->Double{
    return n1*n2
}
print("Funcion Multiplicar 2 numeros dobles")
print("Ingrese el primer numero: ",terminator:"")
let n1 = Double(readLine()!)!
print("Ingrese el segundo numero: ",terminator:"")
let n2 = Double(readLine()!)!
let resul2 = multiplicarDobles(n1: n1, n2: n2)
print("El resultado de \(n1) x \(n2) es: \(resul2)")

//Diseñe un metodo para calcular el factorial de un numero entero (iterativo)
func factorialIterativo(_ n:Int)->Int{
    var resultado:Int = 1
    for i in 1...n{
        resultado *= i
    }
    return resultado
}
print("Funcion Factorial Iterativo")
print("Ingrese un numero: ",terminator:"")
//let n3 = Int(readLine()!)!
let n3 = Int.random(in: 1...12)
let resul3 = factorialIterativo(n3)
print("El factorial de \(n3) es: \(resul3)")


//Diseñe un metodo para calcular el factorial recursivo de un numero entero para menores de 12 y para mayores de 12 un numero doble
func factorial(_ n: Int) -> Double {
    if n <= 12 {
        func factorialRecursivo(_ n: Int) -> Int {
            return n == 0 ? 1 : n * factorialRecursivo(n - 1)
        }
        return Double(factorialRecursivo(n))
    } else {
        func factorialGrande(_ n: Int) -> Double {
            return n == 0 ? 1.0 : Double(n) * factorialGrande(n - 1)
        }
        return factorialGrande(n)
    }
}

print("Funcion Factorial Recursivo")
print("Ingrese un numero: ",terminator:"")
//let n4 = Int(readLine()!)!
let n4 = Int.random(in: 1...31)
let resul4 = factorial(n4)
print("El factorial de \(n4) es: \(resul4)")

//Generar un random de 2 digitos
print("Generar un random")
let random = Int.random(in: 10...100) //n a n-1
print("El numero random es: \(random)")

