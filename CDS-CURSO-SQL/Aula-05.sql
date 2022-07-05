
/* OPERADORES DE COMPARAÇÃO */


-- Igualdade

SELECT
   COUNT(p.product_id)
FROM products p
WHERE p.product_category_name = 'audio'

SELECT
   COUNT(p.product_id) AS produtos
FROM products p
WHERE p.product_photos_qty = 3


-- Desigualdade

SELECT
   p.product_category_name,
   COUNT( p.product_id )
FROM products p
WHERE p.product_category_name <> 'alimentos'
GROUP BY p.product_category_name

SELECT
   product_photos_qty,
   COUNT( p.product_id ) AS produtos
FROM products p
WHERE p.product_photos_qty <> 3
GROUP BY p.product_photos_qty


-- Maior ou menor que

SELECT
   product_photos_qty,
   COUNT( p.product_id ) AS produtos
FROM products p
WHERE p.product_photos_qty > 3
GROUP BY p.product_photos_qty

SELECT
   product_photos_qty,
   COUNT( p.product_id ) AS produtos
FROM products p
WHERE p.product_photos_qty < 3
GROUP BY p.product_photos_qty


-- Maior igual ou menor igual que

SELECT
   product_photos_qty,
   COUNT( p.product_id ) AS produtos
FROM products p
WHERE p.product_photos_qty >= 3
GROUP BY p.product_photos_qty


SELECT
   product_photos_qty,
   COUNT( p.product_id ) AS produtos
FROM products p
WHERE p.product_photos_qty <= 3
GROUP BY p.product_photos_qty
