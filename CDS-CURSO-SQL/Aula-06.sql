
/* LÓGICA BOOLENA */

-- A lógica AND

SELECT
   COUNT (p.product_id)
FROM products p
WHERE p.product_category_name = 'audio'
AND p.product_photos_qty >= 3

SELECT
   COUNT( p.product_id )
FROM products p
WHERE p.product_category_name = 'audio'
AND p.product_photos_qty >= 3
AND p.product_photos_qty < 10

SELECT
COUNT( DISTINCT c.customer_id ) AS numero_clientes
FROM customer c
WHERE c.customer_state = 'SP'
AND c.customer_city = 'Campinas'

-- A lógica OR

SELECT
   COUNT( p.product_id )
FROM products p
WHERE p.product_category_name = 'audio'
OR p.product_photos_qty >= 3

SELECT
   COUNT( p.product_id )
FROM products p
WHERE p.product_category_name = 'audio'
OR p.product_photos_qty = 3
OR p.product_category_name = 'alimentos'

SELECT
   COUNT( DISTINCT c.customer_id ) AS numero_clientes
FROM customer c
WHERE c.customer_state = 'SP'
OR c.customer_state = 'RJ'
