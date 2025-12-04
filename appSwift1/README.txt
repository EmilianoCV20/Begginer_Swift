----------------------------------------------------
1. Overview
----------------------------------------------------
appSwift1 es un proyecto de práctica en Swift diseñado para comprender el uso de:
- Operadores bitwise (XOR, AND, OR)
- Conversión de valores numéricos entre bases (binario, octal, hexadecimal)
- Literales numéricos en diferentes formatos
- Manejo de rangos (cerrados, abiertos y unilaterales)
- Manipulación de cadenas mediante arreglos de caracteres y ciclos

Este programa imprime resultados en consola, demostrando paso a paso el funcionamiento de
cada sección con ejemplos numéricos y de estructura.

----------------------------------------------------
2. Estructura de Archivo
----------------------------------------------------

/main.swift  
Archivo principal donde se ejecuta todo el código. Contiene:
- Declaración y uso de operadores bitwise  
- Conversión entre distintos formatos numéricos  
- Ejemplos con rangos en Swift  
- Trabajo con cadenas usando iteración y cambios dinámicos

----------------------------------------------------
3. Funcionalidad Clave
----------------------------------------------------
• **Operadores Bitwise**
- XOR (^)
- AND (&)
- OR (|)

• **Conversiones Numéricas**
- Decimal a binario, octal y hexadecimal con `String(value, radix: base)`
- Conversión inversa desde binario con `Int(binString, radix: base)`

• **Diferentes tipos de literales numéricos**
- Decimal
- Binario (`0b`)
- Octal (`0o`)
- Hexadecimal (`0x`)
- Números de punto flotante
- Formato exponencial

• **Rangos**
- Cerrado (`5...10`)
- Semi-abierto (`5..<10`)
- Unilateral cerrado (`...5`)
- Unilateral abierto (`5...`)

• **Trabajo con cadenas**
- Conversión de `String` a arreglo de caracteres
- Construcción incremental con `lowercased()`
- Eliminación progresiva usando `removeLast()`

----------------------------------------------------
4. Requerimientos
----------------------------------------------------
• macOS con soporte para Swift  
• Xcode o compilador Swift desde terminal  
----------------------------------------------------
