## Nike Store – SwiftUI Workshop

Mini app creada durante los **SwiftUI Workshops** (18 y 19 de septiembre, Tec de Monterrey) impartidos por **Swift Tec**.  
El objetivo fue aprender SwiftUI desde cero y terminar con una **app funcional para iPhone** al finalizar los talleres.

## Features
- Lista de sneakers (nombre, precio, descripción y rating).
- Vista de detalle con imagen grande, descripción y estrellas dinámicas.
- Botón con animación: cambia color y texto al presionarlo.
- Datos locales usando un modelo `Sneaker`.
- Navegación con `NavigationStack` y `NavigationLink`.
- `TabView` con dos secciones: **Store** y **Profile**.

---

## Tecnologías utilizadas
- **Swift 5**
- **SwiftUI**
- **Xcode**
- iOS 26 Simulator / Device

---

## Estructura del proyecto
- `Sneaker.swift` → Modelo de datos.
- `StoreView.swift` → Lista de sneakers.
- `SneakerView.swift` → Vista de cada card en la lista.
- `DetailSneakerView.swift` → Vista de detalle con animación.
- `ProfileView.swift` → Vista de perfil básica.
- `ContentView.swift` → Contenedor principal con `TabView`.

---

## Cómo correrlo
1. Clona este repositorio:
   ```bash
   git clone https://github.com/TU-USUARIO/NikeStore-SwiftUI.git
