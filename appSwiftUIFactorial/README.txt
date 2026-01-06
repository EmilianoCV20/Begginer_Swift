----------------------------------------------------
1. Overview
----------------------------------------------------
appSwiftUIFactorial es una aplicación desarrollada en SwiftUI diseñada para practicar entrada de usuario, enlace de estado (`@State`), controles interactivos (`TextField`, `Slider`, `Button`) y cálculo recursivo (factorial). La interfaz ofrece dos modos para calcular el factorial de un número: mediante entrada directa en un `TextField` y mediante un `Slider` con paso entero.

Flujo principal:
- El usuario escribe un número entero en el campo de texto y pulsa “Calcular” para obtener el factorial (validación incluida).  
- Alternativamente, el usuario selecciona un valor con el `Slider` (0–20) y puede calcular su factorial con un botón dedicado.  
- El resultado se muestra en pantalla con formato legible.

----------------------------------------------------
2. Estructura de Archivos
----------------------------------------------------

/appSwiftUIFactorialApp.swift  
    Punto de entrada principal marcado con `@main`. Define la escena de la aplicación y carga `ContentView` dentro de un `WindowGroup`. No contiene lógica adicional.

/ContentView.swift  
    Vista principal que implementa la UI y la lógica ligera:
    - `@State private var numero: String` → almacena la entrada textual del usuario.
    - `@State private var resultado: String` → texto que muestra el resultado o mensaje de error.
    - `@State private var num: Double` → valor del slider (0...20).
    - `TextField` con `keyboardType(.numberPad)` para entrada numérica.
    - `Button` que valida la entrada y calcula el factorial usando la función recursiva `factorial(_:)`.
    - `Slider(value: $num, in: 0...20, step: 1)` que permite seleccionar un entero de 0 a 20; vista asociada que muestra `factorial(Int(num))`.
    - Presentación de resultados mediante `Text` con formato y alineación.

----------------------------------------------------
3. Funcionalidad Clave
----------------------------------------------------
• **Entrada y validación de usuario**  
  – El `TextField` acepta texto; al pulsar "Calcular" se intenta convertir a `Int`. Si la conversión falla, se muestra un mensaje de error.

• **Cálculo recursivo del factorial**  
  – Implementación recursiva `factorial(_:)` que devuelve `Int`.  
  – Adecuado para valores pequeños; el slider limita la entrada a 0..20 para evitar overflow y recursión excesiva.

• **Modo alternativo con Slider**  
  – `Slider` con paso de 1 permite seleccionar rápidamente un entero.  
  – Visualización inmediata del valor y del factorial calculado (en texto).  
  – Botón para fijar el resultado del slider en el área de resultados.

• **Interactividad declarativa con SwiftUI**  
  – Uso de `@State` para actualizar la UI automáticamente cuando cambian los valores.  
  – Diseño sencillo en `VStack` para ordenar controles y resultados.

----------------------------------------------------
4. Requerimientos
----------------------------------------------------
• iOS 14 o superior (recomendado para compatibilidad actual de SwiftUI)  
• Xcode 13/14/15 con soporte SwiftUI  
• Dispositivo o simulador con teclado numérico disponible para pruebas (el `TextField` usa `numberPad`)  
• No requiere assets externos

----------------------------------------------------
