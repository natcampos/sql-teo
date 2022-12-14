-- Databricks notebook source
select * from silver_olist.pedido

-- leia-se selecione tudo da tabela silver_olist.pedido

-- COMMAND ----------

select
  idPedido,
  descSituacao
from
  silver_olist.pedido

-- COMMAND ----------

select *,
       datediff(dtEstimativaEntrega, dtEntregue) as qtDiasAtrasoEnvio
from silver_olist.pedido
