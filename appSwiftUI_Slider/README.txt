----------------------------------------------------
1. Overview
----------------------------------------------------
appSwiftUI_Slider es una aplicación desarrollada en SwiftUI que demuestra el uso del control **Slider** y la vinculación de estado (`@State`) para crear interfaces reactivas. El proyecto implementa un conversor simple de temperatura: el usuario mueve el slider para seleccionar un valor en grados Celsius y la interfaz muestra en tiempo real la conversión a Fahrenheit.

La interfaz incluye:
- Control interactivo `Slider` para seleccionar el valor de Celsius.
- Visualización formateada del valor actual y su conversión a Fahrenheit.
- Diseño con capas (`ZStack`, `VStack`) y estilo visual (colores de fondo y cápsula en el texto).

----------------------------------------------------
2. Estructura de Archivos
----------------------------------------------------

/appSwiftUI_SliderApp.swift  
Punto de entrada del proyecto. Define la estructura `App` y muestra `ContentView` dentro de un `WindowGroup`. No contiene lógica adicional.

/ContentView.swift  
Vista principal que contiene:
- `@State private var celsius: Double` — variable de estado que almacena el valor actual del slider.
- `Slider(value: $celsius, in: -100...100)` — control para seleccionar la temperatura en Celsius en el rango -100 a 100.
- `Text` que muestra el valor formateado de Celsius y su conversión a Fahrenheit utilizando la expresión `celsius * 9/5 + 32`.
- Estructura visual basada en `ZStack` (fondo gris) y `VStack` para ordenar el slider y el texto.
- Uso de modificadores para formato numérico (`specifier: "%.2f"`), estilos de color, padding y un `Capsule().stroke(...)` como fondo del texto.
- `#Preview` para previsualización en Xcode.

----------------------------------------------------
3. Funcionalidad Clave
----------------------------------------------------
• **Slider enlazado a estado**  
  – El valor del slider actualiza `celsius` mediante binding `$celsius`.  
  – La vista se redibuja automáticamente al cambiar el estado.

• **Conversión en tiempo real**  
  – Conversión de Celsius a Fahrenheit con la fórmula `F = C * 9/5 + 32`.  
  – Presentación del resultado con dos decimales mediante `specifier: "%.2f"`.

• **Diseño reactivo y sencillo**  
  – Fondo con `Color.gray.ignoresSafeArea()` y contenedor `VStack`.  
  – Texto con borde en cápsula y estilo legible sobre fondo coloreado.

• **Rango controlado del Slider**  
  – Rango definido de `-100...100` para facilitar pruebas y visualización de valores negativos.

----------------------------------------------------
4. Requerimientos
----------------------------------------------------
• iOS 13 o superior  
• Xcode con soporte para SwiftUI (Xcode 11+; preferible Xcode 14/15 para compatibilidad actual)  
• Proyecto configurado para SwiftUI como interfaz principal  
• No requiere recursos gráficos externos

----------------------------------------------------
