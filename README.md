# Sistema de Diseño y Auditoría de Accesibilidad

Aplicación móvil desarrollada en Flutter que consume la API pública DummyJSON (https://dummyjson.com) para mostrar categorías y productos, junto con un sistema de diseño prototipado en Figma y una auditoría de accesibilidad.

## Descripción

La app "Mis Productos" permite:
- Visualizar categorías de productos mediante íconos circulares
- Listar productos obtenidos desde una API externa
- Navegar entre categorías y productos filtrados

## Tecnologías utilizadas

- Flutter 3.47.2
- Dart 3.13.2
- flutter_riverpod — manejo de estado
- http — consumo de API REST
- DummyJSON API — fuente de datos de productos y categorías

## Requisitos

- Flutter instalado y configurado.
- Dart SDK compatible con ^3.13.2.
- Conexion a internet para consumir DummyJSON.

Puedes comprobar la instalacion con:

flutter doctor

## Instalacion y ejecucion

1. Clona o descarga este repositorio.
2. Entra en la carpeta del proyecto.
3. Instala las dependencias:

flutter pub get

4. Ejecuta la aplicacion:

flutter run

Para ejecutar las pruebas:

flutter test

## Estructura principal

\`\`\`
lib/
├── main.dart                      # Punto de entrada de la aplicacion
├── theme.dart                     # Tema visual
├── models/
│   ├── category.dart               # Modelo de categoria
│   └── product.dart                # Modelo de producto
├── providers/
│   └── product_providers.dart      # Estado y proveedores Riverpod
├── services/
│   └── product_service.dart        # Peticiones a DummyJSON
└── ui/
    ├── app.dart                    # Configuracion principal de MaterialApp
    └── product/
        └── product_view.dart       # Vista de productos
\`\`\`

## Prototipo en Figma

El diseño de la interfaz fue prototipado en Figma antes de su implementación, replicando la estructura de:
- Barra superior con título "Mis Productos"
- Fila de categorías con íconos circulares
- Lista de productos con ícono y texto descriptivo

Ver prototipo en Figma: https://www.figma.com/design/VwMiSvXfY4frCfmYaZ7GBG/Sin-t%C3%ADtulo?node-id=3-4&t=AcGRdD8SVGeMqMtQ-1

## Auditoría de accesibilidad

Se realizó una revisión de accesibilidad considerando:
- Contraste de color entre texto e íconos sobre el fondo
- Tamaño de las áreas táctiles (íconos y elementos de lista)
- Legibilidad del texto en distintos tamaños de pantalla
- Estructura semántica adecuada para lectores de pantalla

## Autor

Reinel Alfaro