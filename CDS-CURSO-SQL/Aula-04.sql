
/* AGRUPAMENTOS */

-- Agrupamento com 1 variável (dimensão)

SELECT
   p.product_category_name,
   COUNT( p.product_id ),
   SUM( p.product_weight_g ),
   AVG( p.product_weight_g ),
   MAX( p.product_height_cm ),
   MIN( p.product_width_cm ),
   COUNT( DISTINCT p.product_length_cm )
FROM products p
GROUP BY p.product_category_name

SELECT
   oi.seller_id ,
   COUNT( DISTINCT oi.order_id ) AS pedidos,
   COUNT( oi.product_id ) AS items,
   AVG( oi.price ) AS preco_medio
FROM order_items oi
GROUP BY oi.seller_id

-- Agrupamento com 2 variáveis ( dimensões )

 SELECT
   s.seller_state ,
   s.seller_city,
   COUNT( s.seller_id ),
   SUM( s.seller_zip_code_prefix )
FROM sellers s
GROUP BY s.seller_state , s.seller_city

SELECT
   DATE( oi.shipping_limit_date ) AS data_ ,
   COUNT( oi.seller_id ) AS vendedores,
   COUNT( DISTINCT oi.order_id ) AS pedidos,
   COUNT( oi.product_id ) AS items,
   AVG( oi.price ) AS preco_medio
FROM order_items oi
GROUP BY DATE( oi.shipping_limit_date )