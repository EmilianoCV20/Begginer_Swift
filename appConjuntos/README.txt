----------------------------------------------------
1. Overview
----------------------------------------------------
appConjuntos es un proyecto de práctica en Swift cuyo propósito es comprender el uso del tipo de colección **Set** (conjuntos), incluyendo operaciones fundamentales y relaciones matemáticas entre conjuntos.

Este programa permite:
- Crear conjuntos vacíos o inicializados.
- Insertar y eliminar elementos.
- Generar valores aleatorios dentro de un conjunto.
- Realizar operaciones de teoría de conjuntos: **unión, intersección, diferencia y diferencia simétrica**.
- Comparar conjuntos utilizando relaciones como **subset**, **superset** y **disjoint**.
- Leer valores desde consola para permitir interacción con el usuario.

----------------------------------------------------
2. Estructura del Archivo
----------------------------------------------------

/main.swift  
Contiene toda la lógica del programa:
- Declaración de conjuntos.
- Eliminación interactiva de elementos mediante entrada desde consola.
- Creación dinámica de un conjunto con valores aleatorios.
- Ejecución de operaciones matemáticas entre conjuntos.
- Evaluación lógica de relaciones entre conjuntos: subconjunto, superconjunto y conjuntos disjuntos.

----------------------------------------------------
3. Funcionalidad Clave
----------------------------------------------------
• **Creación y modificación de conjuntos**
- `insert()`
- `remove()`
- Ciclo `for` para recorrer elementos

• **Operaciones de conjuntos**
- Unión: `union()`
- Intersección: `intersection()`
- Diferencia: `subtracting()`
- Diferencia simétrica: `symmetricDifference()`

• **Relaciones entre conjuntos**
- `isSubset(of:)`
- `isSuperset(of:)`
- `isDisjoint(with:)`

• **Datos dinámicos y aleatorios**
- Uso de `arc4random_uniform()` para poblar conjuntos automáticamente.

• **Entradas del usuario**
- `readLine()` para permitir interacción eliminando valores del conjunto.

----------------------------------------------------
4. Requerimientos
----------------------------------------------------
• macOS con soporte para Swift  
• Xcode o ejecución vía terminal con `swiftc`  
• Entrada manual desde consola para probar eliminación dinámica de elementos  

----------------------------------------------------
