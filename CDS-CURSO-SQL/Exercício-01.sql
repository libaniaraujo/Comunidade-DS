
/* EXERC�CIOS */


-- 1. Gere uma tabela com o id do cliente, a cidade e o estado onde ele vive.

SELECT 
   c.customer_id,
   c.customer_city,
   c.customer_state
FROM customer c 
LIMIT 10;

-- 2. Gere uma tabela com o id do cliente e a cidade, somente dos clientes que vivem em Santa Catarina.

SELECT 
   c.customer_id,
   c.customer_city
FROM customer c
WHERE c.customer_state = 'SC'
LIMIT 10;

-- 3. Gere uma tabela com o id do cliente e o estado, somente dos clientes que vivem em Florian�polis.

SELECT 
   c.customer_id,
   c.customer_city, 
   c.customer_state 
FROM customer c
WHERE c.customer_state = 'florianopolis'
LIMIT 10;

-- 4. Gere uma tabela com o estado, latitude e longitude do estado de S� Paulo

SELECT
   g.geolocation_lat,
   g.geolocation_lng,
   g.geolocation_state
FROM geolocation g
WHERE g.geolocation_state = 'SP'
LIMIT 10;

-- 5. Gere uma tabela com o id do produto, a data de envio e o pre�o, somente para produtos acima de 6300.

SELECT
   oi.product_id,
   oi.shipping_limit_date,
   oi.price
FROM order_items oi
WHERE oi.price > 6300
   
-- 6. Gere uma tabela com o id do pedido, o tipo de pagamento e o n�mero de parcelas, somente para produtos com parcelas menores que 1.

SELECT 
   op.order_id,
   op.payment_type,
   op.payment_installments
FROM order_payments op
WHERE op.payment_installments < 1

-- 7. Gere uma tabela com o id do pedido, id do cliente, o status do pedido e a data de aprova��o , somente para compras aprovadas at� 
-- dia 05 de Maio de 2016

SELECT
   o.order_id ,
   o.customer_id ,
   o.order_status ,
   o.order_approved_at
FROM orders o
WHERE o.order_approved_at < '2016-10-05'
