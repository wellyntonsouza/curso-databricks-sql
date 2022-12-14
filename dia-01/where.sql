-- Databricks notebook source
SELECT
  *
FROM
  silver_olist.pedido
WHERE
  descSituacao = 'shipped'
AND year(dtPedido) = '2018' --LIMIT 100

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
WHERE
  (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018' 
--LIMIT 100
-- parenteses para detemrinar a ordem de execução da query

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
WHERE
  descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018' 

-- COMMAND ----------

SELECT
  *,
  datediff(dtEstimativaEntrega, dtAprovado)
FROM
  silver_olist.pedido
WHERE
  (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018' 
AND datediff(dtEstimativaEntrega, dtAprovado) > 30 
--aqui é selecionado aqueles pedidos que estimaram entrega com mais de 30 dias após aprovação do pedido;


-- COMMAND ----------


