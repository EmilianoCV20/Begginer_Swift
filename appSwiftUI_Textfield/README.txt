----------------------------------------------------
1. Overview
----------------------------------------------------
appSwiftUI_Textfield es una aplicación desarrollada en SwiftUI cuyo objetivo es practicar el uso del componente **TextField**, el manejo de estado mediante `@State` y la actualización reactiva de la interfaz de usuario.

La aplicación permite al usuario escribir texto en un campo de entrada y, cuando existe contenido, mostrar dinámicamente dicho texto transformado a mayúsculas.

----------------------------------------------------
2. Estructura de Archivos
----------------------------------------------------

/appSwiftUI_TextfieldApp.swift  
Punto de entrada del proyecto.  
Define la estructura principal `App` y crea la escena inicial usando `WindowGroup`, cargando `ContentView`.  
No contiene lógica adicional.

/ContentView.swift  
Vista principal de la aplicación. Contiene:  
- Variable `@State var entrada: String` para almacenar el texto ingresado por el usuario.  
- Un `TextField` con estilo `RoundedBorderTextFieldStyle`.  
- Configuración visual básica (altura y color del texto).  
- Renderizado condicional de un `Text` que muestra la entrada del usuario en mayúsculas cuando el campo no está vacío.  
- Uso de `Group` para agrupar los elementos de la vista.  
Incluye sección `#Preview` para previsualización en Xcode.

----------------------------------------------------
3. Funcionalidad Clave
----------------------------------------------------
• **Entrada de texto con TextField:**  
  – Campo editable enlazado a una variable de estado.  
  – Placeholder descriptivo para guiar al usuario.

• **Manejo de estado con @State:**  
  – El texto ingresado se almacena en `entrada`.  
  – La vista se actualiza automáticamente al modificar el contenido.

• **Renderizado condicional:**  
  – El texto de salida solo se muestra si el campo no está vacío.  

• **Transformación de texto:**  
  – Uso de `.textCase(.uppercase)` para mostrar la entrada en mayúsculas.

• **Diseño simple y claro:**  
  – Uso de estilos estándar de SwiftUI sin dependencias externas.

----------------------------------------------------
4. Requerimientos
----------------------------------------------------
• iOS 13 o superior  
• Xcode con soporte para SwiftUI  
• No requiere recursos gráficos adicionales

----------------------------------------------------
