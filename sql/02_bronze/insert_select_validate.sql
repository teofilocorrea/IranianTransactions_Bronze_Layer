-- ============================================================
-- Tabla: bronze.transactions
-- Descripción: Carga los datos de transacciones desde
--              stg.transactions hacia la capa Bronze,
--              conservando los valores de origen y agregando
--              metadatos de trazabilidad.
--
-- Autor: Teofilo Correa Rojas
-- Fecha: 05 de octubre de 2026
--
-- Notas:
--   - Origen: stg.transactions
--   - Se conservan los datos sin aplicar transformaciones
--     de negocio ni validaciones de calidad.
--   - Se agregan metadatos para identificar el origen,
--     la fecha de carga y el estado del registro.
--   - source_file: identifica la fuente de los datos.
--   - load_date: registra la fecha y hora de carga.
--   - record_status: indica el estado del registro.
-- ============================================================

SELECT
    status,
    time,
    card_type,
    city,
    amount,
    id,
    'stg_transactions' AS source_file,
    now()              AS load_date,
    'active'           AS record_status
FROM stg.transactions;