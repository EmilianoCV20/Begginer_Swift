----------------------------------------------------
1. Overview
----------------------------------------------------
appSwiftUI_1 es una aplicación sencilla desarrollada en SwiftUI cuyo propósito es practicar los fundamentos de la interfaz declarativa en iOS.  
La vista principal muestra imágenes, textos y un selector de color, demostrando el uso básico de:

• Carga de imágenes desde Assets  
• Uso de íconos del sistema (SF Symbols)  
• Contenedores de layout como VStack  
• Modificadores visuales (resizable, padding, clipShape, aspectRatio)  
• Controles nativos como ColorPicker  

Este proyecto funciona como una introducción al flujo declarativo de SwiftUI y a la construcción de interfaces reutilizables.

----------------------------------------------------
2. Estructura de Archivos
----------------------------------------------------

/appSwiftUI_1App.swift  
Punto de entrada del proyecto. Define la estructura principal `App` y muestra la vista `ContentView` dentro de un `WindowGroup`.  
No contiene lógica adicional.

/ContentView.swift  
Vista principal de la aplicación. Incluye:  
- Imagen cargada desde Assets (`pavorreal2`)  
- Ícono de sistema (`globe`) con estilo adaptable  
- Tres textos de ejemplo  
- `ColorPicker` con un color constante  
- Distribución vertical mediante `VStack`  
- Uso de modificadores visuales como `clipShape`, `padding` y `aspectRatio`

Incluye también la sección `#Preview` para vista previa en Xcode.

----------------------------------------------------
3. Funcionalidad Clave
----------------------------------------------------
• **Carga de imágenes locales desde Assets**  
  – Uso de Image(.pavorreal2)  
  – Aplicación de forma redondeada con `clipShape`

• **Uso de SF Symbols**  
  – Imagen del sistema “globe” renderizada con `foregroundStyle`

• **Construcción de layout con SwiftUI**  
  – Agrupación de elementos en un `VStack`  
  – Aplicación de modificadores comunes

• **Componentes interactivos básicos**  
  – `ColorPicker` con selección constante (modo demostrativo)

• **Previews con #Preview**  
  – Permite visualizar la UI sin ejecutar la app

----------------------------------------------------
4. Requerimientos
----------------------------------------------------
• iOS 17 o superior (o versión mínima definida por tu Xcode)  
• Xcode con soporte completo para SwiftUI  
• Imagen incluida en el Asset Catalog:  
  – pavorreal2

----------------------------------------------------
