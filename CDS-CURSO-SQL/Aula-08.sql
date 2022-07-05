
/* OPERADORES CONDICINAIS EXTRAS */

-- Operador ISNULL

-- *** O operador ISNULL permite selecionar linhas vazias.

SELECT
   p.product_id,
   p.product_category_name
FROM products p
WHERE p.product_category_name IS NULL

SELECT
   p.product_id,
   p.product_category_name
FROM products p
WHERE p.product_category_name IS NOT NULL

-- Operador LIMIT

-- *** O operador LIMIT permite limitar a exibição do retorno da consulta SQL.

SELECT
   p.product_id,
   p.product_category_name
FROM products p
LIMIT 10

-- Operador ORDER BY

-- ** O operador ORDER BY é usado para ordenar os resultados da consulta SQL tanto de maneira crescente quanto de maneira decrescente.
SELECT
   p.product_category_name,
   COUNT( p.product_id ) AS produtos
FROM products p
WHERE p.product_category_name LIKE 'a%'
GROUP BY p.product_category_name
ORDER BY produtos

