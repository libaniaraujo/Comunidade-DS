
/* OPERA��ES MATEM�TICAS NO SQL*/

-- Contagem

SELECT
   COUNT (customer_id) AS contagem
FROM customer c

-- Soma

SELECT
   SUM (p.product_photos_qty) AS soma
FROM products p

-- M�dia

SELECT
   AVG (oi.price) AS average_price
FROM order_items oi  

-- M�ximo e m�nimo

SELECT
   MAX (oi.price) AS max_preco,
   MIN (oi.price) AS min_preco
FROM order_items oi

-- Valores �nicos

SELECT
   DISTINCT seller_city
FROM sellers s

-- Contar valores �nicos

SELECT
   COUNT(DISTINCT seller_city) AS unique_series
FROM sellers s
