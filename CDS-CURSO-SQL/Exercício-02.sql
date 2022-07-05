
/* EXERC�CIOS */

-- 1. Qual o n�mero de clientes �nicos do estado de Minas Gerais?

SELECT 
   COUNT (DISTINCT customer_id)
FROM customer c 
WHERE customer_state = 'MG'

-- 2. Qual a quantidade de cidades �nicas dos vendedores do estado de Santa Catarina?

SELECT
   COUNT( DISTINCT geolocation_city )
FROM geolocation g
WHERE geolocation_state = 'SC'

-- 3. Qual a quantidade de cidades �nicas de todos os vendedores da base?

SELECT
   COUNT( DISTINCT geolocation_city )
FROM geolocation g

-- 4. Qual o n�mero total de pedidos �nicos acima de R$ 3.500?

SELECT
   COUNT (DISTINCT order_id)
FROM order_items oi
WHERE price > 3500

-- 5. Qual o valor m�dio do pre�o de todos os pedidos?

SELECT
   AVG (price)
FROM order_items oi

-- 6. Qual o maior valor de pre�o entre todos os pedidos?

SELECT
   MAX (price)
FROM order_items oi

-- 7. Qual o menor valor de pre�o entre todos os pedidos?

SELECT
   MIN (price)
FROM order_items oi

-- 8. Qual a quantidade de produtos distintos vendidos abaixo do pre�o de R$ 100.00?

SELECT
   COUNT (DISTINCT product_id)
FROM order_items oi 
WHERE price < 100

-- 9. Qual a quantidade de vendedores distintos que receberam algum pedido antes do dia 23 de setembro de 2016?

SELECT
   COUNT (seller_id)
FROM order_items oi 
WHERE shipping_limit_date < '2016-09-23 00:00:00'

-- 10. Quais os tipos de pagamentos existentes?

SELECT 
   DISTINCT payment_type
FROM order_payments op 

-- 11. Qual o maior n�mero de parcelas realizado?

SELECT
   MAX( payment_installments )
FROM order_payments op

-- 12. Qual o menor n�mero de parcelas realizado?

SELECT 
   MIN( payment_installments )
FROM order_payments op

-- 13. Qual a m�dia do valor pago no cart�o de cr�dito?

SELECT 
   AVG(payment_value) 
FROM order_payments op 
WHERE payment_type = 'credit_card'

-- 14. Quantos tipos de status para um pedido existem?

SELECT
   COUNT(DISTINCT order_status)
FROM orders o

-- 15. Quais os tipos de status para um pedido?

SELECT 
   DISTINCT order_status
FROM orders o

-- 16. Quantos clientes distintos fizeram um pedido?

SELECT
   COUNT(DISTINCT customer_id)
FROM orders o 

-- 17. Quantos produtos est�o cadastrados na empresa?

SELECT
   COUNT(DISTINCT product_id)
FROM products p 

-- 18. Qual a quantidade m�xima de fotos de um produto?

SELECT 
   MAX(product_photos_qty)
FROM products p 

-- 19. Qual o maior valor do peso entre todos os produtos?

SELECT 
   MAX(product_weight_g)
FROM products p 

-- 20. Qual a altura m�dia dos produtos?

SELECT 
   AVG(product_height_cm)
FROM products p 
