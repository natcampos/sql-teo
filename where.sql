-- Databricks notebook source
select *

from silver_olist.pedido

where descSituacao = 'delivered'

limit 10

-- COMMAND ----------

select *

from silver_olist.pedido

where descSituacao = 'shipped'
and year(dtPedido) = 2018 

-- COMMAND ----------

select *

from silver_olist.pedido

where descSituacao in ('shipped', 'canceled') and year(dtPedido) = 2018 
and datediff(dtEstimativaEntrega, dtAprovado) > 30
