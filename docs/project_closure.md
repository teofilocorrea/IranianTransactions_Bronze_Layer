# Project Closure — Iranian Transactions | Bronze Layer

## 📋 Información del proyecto

| Campo | Detalle |
|---|---|
| **Proyecto** | Iranian Transactions — Bronze Layer |
| **Fase** | 3 de 5 — Capa Bronze |
| **Autor** | Teófilo Correa Rojas |
| **Fecha inicio** | Septiembre 2026 |
| **Fecha cierre** | Octubre 2026 |
| **Estado** | ✅ Completado |

---

## 🎯 Objetivos — ¿Se cumplieron?

| Objetivo | Estado |
|---|---|
| Crear la tabla Bronze con 9 columnas | ✅ Completado |
| Copiar 10,000 registros de STG con INSERT SELECT | ✅ Completado |
| Agregar los 3 campos de auditoría | ✅ Completado |
| Validar la carga completa | ✅ Completado |

---

## 🧱 Lo que se construyó

| Tabla | Campos | Registros |
|---|---|---|
| `bronze.transactions` | 9 (6 negocio + 3 auditoría) | 10,000 |

---

## 📚 Lo que apliqué en esta fase

| Concepto | Descripción |
|---|---|
| INSERT SELECT | Copiar registros de una tabla a otra en un solo paso |
| Campos de auditoría NOT NULL | Metadatos controlados que garantizan trazabilidad |
| DEFAULT NOW() | Timestamp autogenerado — no se incluye en el INSERT |
| Ensayo con SELECT | Ver el resultado antes de guardar |
| Bronze no limpia | La transformación ocurre en Silver, no aquí |

---

## 🔑 Lección más importante

```
Bronze separa dos responsabilidades:

STG → preservar el dato como llegó
Bronze → registrar cuándo y de dónde llegó

Esa separación es lo que hace el pipeline
auditable: siempre puedes responder
"¿qué había antes?" y "¿cuándo entró?"
sin adivinar.
```


---

## 💼 Qué significa para la gestión de proyectos

```
La trazabilidad no es un detalle técnico —
es una garantía de confianza en los datos.

Cuando alguien pregunta "¿de dónde salió
este número?", un pipeline con Bronze puede
responder con exactitud. Uno sin él adivina.

En proyectos reales, esa capacidad de auditar
el origen de cada dato es lo que distingue
un proceso confiable de uno que "funciona
hasta que algo falla y nadie sabe por qué".
```


---

## 🔜 Próximas fases

| Fase | Proyecto | Enfoque |
|---|---|---|
| 1 | Iranian Transactions — Database Infrastructure | Infraestructura ✅ |
| 2 | Iranian Transactions — STG Layer | Datos crudos ✅ |
| 3 | Iranian Transactions — Bronze Layer | Auditoría ✅ |

---

## 👤 Autor

### Teófilo Correa Rojas
**Project Manager TI | Data analytic**
🔗 [LinkedIn](https://www.linkedin.com/in/teófilo-correa-rojas/)
