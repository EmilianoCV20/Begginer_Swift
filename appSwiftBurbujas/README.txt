----------------------------------------------------
1. Overview
----------------------------------------------------
appSwiftBurbujas es un proyecto desarrollado en Swift con el objetivo de demostrar la 
implementación del algoritmo de ordenamiento Burbuja (Bubble Sort) mediante diferentes enfoques.

Este programa genera valores numéricos aleatorios y aplica dos variantes del algoritmo
para ordenarlos de menor a mayor. Además, permite visualizar el antes y después del proceso
de ordenamiento, reforzando el entendimiento del comportamiento del algoritmo.

----------------------------------------------------
2. Estructura del Archivo
----------------------------------------------------

/main.swift  
Incluye toda la lógica del programa, específicamente:

- Generación de números aleatorios dentro de un arreglo.
- Implementación de dos funciones de ordenamiento Burbuja:
  1. **`burbujaclase(arrayN:)`**  
     Recibe un arreglo como parámetro y retorna uno nuevo ordenado.
  2. **`burbuja(vec:)`**  
     Ordena el arreglo utilizando `inout`, modificando directamente la variable enviada.

- Ejecución y prueba de ambas funciones con nuevos conjuntos de datos.

----------------------------------------------------
3. Funcionalidad Clave
----------------------------------------------------
• **Algoritmo de ordenamiento Burbuja**
- Comparación secuencial de pares de elementos.
- Intercambio de valores cuando el número anterior es mayor que el siguiente.
- Repetición del proceso hasta lograr el orden ascendente completo.

• **Implementación doble**
- Versión con **retorno de arreglo independiente**.
- Versión con uso de **parámetro inout**, modificando la referencia directamente.

• **Generación de datos aleatorios**
- Uso de `Int.random(in:)` para crear arreglos de prueba.

• **Salida informativa**
- Impresión de valores antes y después del proceso de ordenamiento.

----------------------------------------------------
4. Requerimientos
----------------------------------------------------
• macOS con soporte para Swift  
• Ejecución mediante:
  - Xcode
  - Terminal usando `swiftc` o `swift run`

• Entorno de consola (no requiere interfaz gráfica)

----------------------------------------------------
