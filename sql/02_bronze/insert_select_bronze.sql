-- ============================================================
-- Script : INSERT SELECT — STG → Bronze
-- Tabla  : bronze.transactions
-- Origen : stg.transactions
-- Destino: bronze.transactions
-- Autor  : Teofilo Correa Rojas
-- Fecha  : 05 de octubre 2026
-- ============================================================

INSERT INTO bronze.transactions (status, time, card_type, city, amount, id, source_file,load_date,record_status)

SELECT
    status,
    time,
    card_type,
    city,
    amount,
    id,
    'stg_transactions',
    now(),
    'active'
FROM stg.transactions;

-- ============================================================
-- Script   : Validación de carga Bronze
-- Capa     : STG
-- Objetivo : Verificar que los 10,000 registros del dataset
--            se cargaron correctamente en stg.bronze
-- Autor    : Teofilo Correa Rojas
-- Fecha    : 05 de octubre 2026
-- ============================================================

SELECT COUNT(*) AS total_registro_bronze
FROM bronze.transactions;

