# Bronze Layer — Iranian Transactions

## ¿Qué es esta capa?

Bronze es la capa de auditoría. Copia los datos de STG y agrega
tres campos de metadatos que registran el origen y el momento de
la carga. No limpia, no valida, no transforma — solo registra.

---

## 📋 Reglas de esta capa

- Las 6 columnas de negocio siguen en TEXT (igual que STG)
- Sin PK — el id se repite en este dataset
- Sin constraints en las columnas de negocio
- Los 3 campos de auditoría son NOT NULL (metadatos controlados)
- `load_date` usa DEFAULT NOW() — no se incluye en el INSERT
- Bronze NO modifica los datos: llegan sucios y así se quedan

---

## 📋 Los 3 campos de auditoría

| Campo | Tipo | Valor | Por qué NOT NULL |
|---|---|---|---|
| `source_file` | VARCHAR(100) | 'stg_transactions' | metadato controlado — siempre conocido |
| `load_date` | TIMESTAMP | DEFAULT NOW() | se autogenera — nunca puede faltar |
| `record_status` | VARCHAR(20) | 'active' | metadato controlado — siempre conocido |

---

## ⚠️ Suciedad que persiste en Bronze

Bronze preserva la suciedad de STG intacta.
Se documenta aquí como referencia para Silver:

| Campo | Tipo de suciedad |
|---|---|
| `status` | 6 variantes: fail, FAIL, failed, Success, succeed, success |
| `card_type` | 11 variantes + nan |
| `city` | TEHRAN, THR, tehr@n, nan, espacios extras |
| `amount` | -999999.0, negativos, 0.0 (981 registros) |

---

## ✅ Resultado de la carga

| Métrica | Resultado |
|---|---|
| Registros | 10,000 |
| Pérdida | 0 |

---

## 🔜 Qué sigue — Silver

Silver es donde ocurre la transformación real: limpia las
variantes de texto (CASE), convierte tipos (CAST), calcula
columnas derivadas (fees, discount, balance) y marca los
registros con valores imposibles. Bronze queda intacto
como respaldo del dato original.