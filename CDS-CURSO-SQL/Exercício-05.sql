
/* EXERC�CIOS */

-- 1. Qual o n�mero de clientes �nicos nos estado de Minas Gerais ou Rio de Janeiro?

SELECT 
   customer_state,
   COUNT (DISTINCT c.customer_id) AS cliente_unico
FROM customer c
WHERE c.customer_state = 'MG' OR customer_state = 'RJ'

-- 2. Qual a quantidade de cidades �nicas dos vendedores no estado de S�o Paulo ou Rio de Janeiro com a latitude maior que -24.54 e 
-- longitude menor que -45.63?

SELECT 
   g.geolocation_state,
   COUNT (DISTINCT g.geolocation_city) AS cidades
FROM geolocation g 
WHERE g.geolocation_state = 'SP' OR g.geolocation_state = 'RJ'
AND ( g.geolocation_lat > -24.54 AND g.geolocation_lng < -45.63 )
GROUP BY g.geolocation_state

-- 3. Qual o n�mero total de pedidos �nicos, o n�mero total de produtos e o pre�o m�dio dos pedidos com o pre�o de frete maior que R$ 20 
-- e a data limite de envio entre os dias 1 e 31 de Outubro de 2016?

SELECT
   COUNT( DISTINCT oi.order_id ) AS pedidos,
   COUNT( oi.product_id ) AS produtos,
   AVG( oi.price ) AS preco_medio
FROM order_items oi
WHERE freight_value > 20
AND oi.price > 10 AND oi.price < 100
AND oi.shipping_limit_date >= '2016-10-01'
AND oi.shipping_limit_date <= '2016-10-31'

-- 4. Mostre a quantidade total dos pedidos e o valor total do pagamento, para pagamentos entre 1 e 5 presta��es ou um valor de pagamento 
-- acima de R$ 5000.

SELECT
   payment_type,
   payment_installments,
   COUNT (op.order_id) AS pedidos,
   SUM (op.payment_value) AS valor_total_pagamento
FROM order_payments op
WHERE (op.payment_installments >= 1 AND op.payment_installments < 5)
OR op.payment_value >= 5000
GROUP BY payment_type, payment_installments

-- 5. Qual a quantidade de pedidos com o status em processamento ou cancelada acontecem com a data estimada de entrega maior que 01 de 
-- Janeiro de 2017 ou menor que 23 de Novembro de 2016?

SELECT
   order_status ,
   COUNT( order_id ) AS pedidos
FROM orders o
WHERE (order_status = 'processing' OR order_status = 'canceled')
AND (o.order_estimated_delivery_date > '2017-01-01' OR o.order_estimated_delivery_date < '2016-11-23')
GROUP BY order_status

-- 6. Quantos produtos est�o cadastrados nas categorias: perfumaria, brinquedos, esporte lazer, cama mesa e banho e m�veis de escrit�rio 
-- que possuem mais de 5 fotos, um peso maior que 5 g, um altura maior que 10 cm, uma largura maior que 20 cm?

SELECT
   product_category_name ,
   COUNT( DISTINCT product_id )
FROM products p
WHERE ( product_category_name = 'perfumaria'
   OR product_category_name = 'brinquedos'
   OR product_category_name = 'esporte_lazer'
   OR product_category_name = 'cama_mesa_banho'
   OR product_category_name = 'moveis_escritorio')
   AND product_photos_qty > 5
   AND product_weight_g > 5
   AND product_height_cm > 10
   AND product_width_cm > 20
GROUP BY product_category_name
