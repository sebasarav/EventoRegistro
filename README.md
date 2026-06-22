# EventLogix – Sistema de Registro a Eventos Académicos

Aplicación web desarrollada con **ASP.NET Web Forms (.NET Framework)** para la Tarea No. 1 del curso **03101 – Programación Avanzada en Web**, UNED 2026.

---

## Descripción

Permite registrar participantes a eventos académicos de la UNED. El usuario completa un formulario con sus datos personales y el evento de interés. Al enviarlo, es redirigido a una página de confirmación con el resumen completo de su registro.

---

## Funcionalidades principales

- Formulario de registro con validación de datos en el servidor
- Postback automático al seleccionar un evento (muestra fecha y sede)
- Navegación entre dos páginas ASPX
- Resumen de datos en página de confirmación usando `Session`
- Estilos con CSS propio

---

## Requisitos para ejecutar

- Visual Studio 2022 (Community o superior)
- .NET Framework 4.8
- Componente **Desarrollo de ASP.NET y web** instalado en Visual Studio

---

## Instrucciones para ejecutar

1. Clonar o descargar este repositorio
2. Abrir el archivo `EventLogix.sln` en Visual Studio
3. Presionar **F5** o el botón ▶ para iniciar con IIS Express
4. La aplicación se abrirá automáticamente en el navegador

---

## Estructura del proyecto

```
EventLogix/
├── Default.aspx              → Formulario principal de registro
├── Default.aspx.cs           → Lógica del formulario (C#)
├── ConfirmHub.aspx           → Página de confirmación y resumen
├── ConfirmHub.aspx.cs        → Lógica de confirmación (C#)
├── Styles/
│   └── Site.css              → Hoja de estilos CSS
├── EventLogix.sln            → Solución de Visual Studio
└── README.md
```

---

## Controles Web Forms utilizados

| Control | Uso |
|---|---|
| `TextBox` | Nombre, correo electrónico y teléfono |
| `DropDownList` | Selección de evento (con AutoPostBack) |
| `RadioButtonList` | Modalidad: Presencial o Virtual |
| `CheckBox` | Aceptación de términos y condiciones |
| `Button` | Registrar y Limpiar formulario |
| `Label` | Etiquetas, mensajes e información del evento |
| `Panel` | Mostrar u ocultar información del evento |
| `RequiredFieldValidator` | Validación de campos obligatorios |
| `RegularExpressionValidator` | Validación de formato de correo y teléfono |
| `CustomValidator` | Validación del CheckBox de términos |
| `ValidationSummary` | Resumen consolidado de errores |

---

## Video demostrativo

[PEGAR AQUÍ EL ENLACE AL VIDEO]

---

## Estudiante

**Sebastián Arias Avilés**  
Curso: 03101 – Programación Avanzada en Web  
UNED – II Cuatrimestre 2026

---

## Declaración de uso de IA

Para el desarrollo de esta tarea se utilizó la herramienta Claude (Anthropic) como apoyo para entender conceptos y funcionalidades. El código, la lógica implementada y el documento final fueron revisados, comprendidos y ajustados por mi persona.
