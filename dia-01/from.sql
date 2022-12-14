-- Databricks notebook source
SELECT * FROM silver_olist.pedido
-- select all from table "silver_olist.pedido"

-- COMMAND ----------

SELECT idPedido,
      descSituacao
FROM silver_olist.pedido

-- COMMAND ----------

SELECT
  idPedido,
  descSituacao
FROM
  silver_olist.pedido
LIMIT
  5 -- ELE SELECIONA APENAS 5 DE FORMA ALEATÓRIA, OU SEJA, NÃO REPRESENTATIVO DA AMOSTRA (AMOSTRAGEM/ESTATÍSITCA)

-- COMMAND ----------

SELECT
  *,
  DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega
FROM
  silver_olist.pedido 
  -- ver quantidade de dias entre duas datas, no caso serão entre data de envio e data de estimativa de entrega

-- COMMAND ----------


