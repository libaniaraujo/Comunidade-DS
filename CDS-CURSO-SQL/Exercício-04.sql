
/* EXERC�CIOS */

-- 1. Qual o n�mero de clientes �nicos do estado de S�o Paulo?

SELECT
   COUNT (DISTINCT c.customer_id) AS numero_clientes
FROM customer c
WHERE c.customer_state = 'SP'

-- 2. Qual o n�mero total de pedidos �nicos feitos no dia 08 de Outubro de 2016?

SELECT
   COUNT (DISTINCT order_id) 
FROM order_items oi 
WHERE DATE (shipping_limit_date) = '2016-10-08'


-- 3. Qual o n�mero total de pedidos �nicos feitos a partir do dia 08 de Outubro de 2016?

SELECT
   COUNT( DISTINCT order_id )
FROM order_items oi
WHERE DATE( shipping_limit_date ) > '2016-10-08'

-- 4. Qual o n�mero total de pedidos �nicos feitos a partir do dia 08 de Outubro de 2016 incluso?

SELECT
   COUNT( DISTINCT order_id )
FROM order_items oi
WHERE DATE( shipping_limit_date ) >= '2016-10-08'

-- 5. Qual o n�mero total de pedidos �nicos, a data m�nima e m�xima de envio, o valor m�ximo, m�nimo e m�dio do frete dos pedidos 
-- abaixo de R$ 1.100 por cada vendedor?

SELECT
   COUNT( DISTINCT order_id ) AS pedidos_unicos,
AVG( freight_value ) AS valor_frete_medio
FROM order_items oi
WHERE price < 1100

-- 6. Qual o n�mero total de pedidos �nicos, a data m�nima e m�xima de envio, o valor m�ximo, m�nimo e m�dio do frete dos pedidos abaixo 
-- de R$ 1.100 incluso por cada vendedor?

SELECT
   COUNT( DISTINCT order_id ) AS pedidos_unicos,
AVG( freight_value ) AS valor_frete_medio
FROM order_items oi
WHERE price <= 1100