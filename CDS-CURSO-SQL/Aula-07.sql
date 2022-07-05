
/* OPERADORES DE LÓGICA DE INTERVALO */

-- Operador BETWEEN

-- ** O operador BETWEEN é uma alternativa para múltiplas condicionais AND.

SELECT
   COUNT( p.product_id )
FROM products p
WHERE p.product_category_name = 'audio'
AND p.product_photos_qty >= 3
AND p.product_photos_qty < 10

SELECT
   COUNT( p.product_id )
FROM products p
WHERE p.product_category_name = 'audio'
AND p.product_photos_qty BETWEEN 3 AND 10

SELECT
   COUNT( p.product_id )
FROM products p
WHERE p.product_category_name = 'audio'
AND p.product_photos_qty NOT BETWEEN 3 AND 10

-- Operador IN

SELECT
   COUNT( p.product_id )
FROM products p
WHERE p.product_category_name = 'audio'
OR p.product_category_name = 'perfumaria'
OR p.product_category_name = 'artes'

SELECT
   COUNT( p.product_id )
FROM products p
WHERE
p.product_category_name IN ('audio', 'perfumaria','artes')

SELECT
   COUNT(p.product_id)
FROM products p
WHERE p.product_photos_qty IN (1, 2, 4, 7, 10)

SELECT
   COUNT(p.product_id)
FROM products p
WHERE p.product_category_name NOT IN ('audio', 'perfumaria', 'artes')

-- Operador LIKE

-- *** O operador LIKE é usado para buscar um padrão no valor da coluna.

-- Filtra qualquer linha da tabela “products” onde o valor da coluna “product_category_name” comece com o caracter “a”, 
-- independente dos outros caracteres da palavra.
SELECT
p.product_category_name,
   COUNT( p.product_id ) AS produtos
FROM products p
WHERE p.product_category_name LIKE 'a%'
GROUP BY p.product_category_name

-- Filtra qualquer linha da tabela “products” onde o valor da coluna “product_category_name” comece com os caracteres “ar”, 
-- independente dos outros caracteres da palavra.
SELECT
p.product_category_name,
   COUNT( p.product_id ) AS produtos
FROM products p
WHERE p.product_category_name LIKE 'ar%'
GROUP BY p.product_category_name

-- Filtra qualquer linha da tabela “products” onde o valor da coluna “product_category_name” termine com os caracteres “ria”, 
-- independente dos outros caracteres da palavra
SELECT
   p.product_category_name,
   COUNT( p.product_id ) AS produtos
FROM products p
WHERE p.product_category_name LIKE '%ria'
GROUP BY p.product_category_name

-- Filtra qualquer linha da tabela “products” onde o valor da coluna “product_category_name” comece com “a”, 
-- tenha um caracter “s” no meio e termine com “o”, independente dos outros caracteres da palavra.
SELECT
   p.product_category_name,
   COUNT( p.product_id ) AS produtos
FROM products p
WHERE p.product_category_name LIKE 'a%s%o'
GROUP BY p.product_category_name

-- Operador HAVING 

-- O operador HAVING é usado para filtrar linhas a partir do resultado de uma função agregadora.

-- Filtre todas as linhas cujo valor resultante da soma da coluna X seja maior que Y”.
SELECT
   p.product_category_name,
   COUNT( p.product_id ) AS produtos
FROM products p
GROUP BY p.product_category_name
HAVING COUNT( p.product_id ) > 2000

SELECT
p.product_category_name,
   COUNT( p.product_id ) AS produtos
FROM products p
WHERE p.product_category_name LIKE 'ar%'
GROUP BY p.product_category_name
HAVING COUNT( p.product_id ) > 50

SELECT
   p.product_category_name,
   SUM (p.product_weight_g) AS peso
FROM products p
WHERE p.product_category_name LIKE 'ar%'
GROUP BY p.product_category_name
HAVING SUM( p.product_weight_g ) > 80000