-- ============================================================
-- Tabla: bronze.transactions
-- Descripción: Réplica de stg.transactions con columnas de auditoría
--              para trazabilidad del dato. Los datos se
--              mantienen crudos, sin limpieza.
-- Autor: Teofilo Correa Rojas
-- Fecha: 29 de septiembre 2026
-- ============================================================

CREATE TABLE IF NOT EXISTS bronze.transactions (
    status          TEXT,
    time            TEXT,
    card_type       TEXT,
    city            TEXT,
    amount          TEXT,
    id              TEXT,
    source_file     VARCHAR(100) NOT NULL,
    load_date       TIMESTAMP NOT NULL DEFAULT NOW(),
    record_status   VARCHAR(20) NOT NULL
);