SELECT 
     customer_city,
     customer_state
FROM customer

SELECT
     customer_id,
     order_id,
     order_status
FROM orders
WHERE
     order_status = 'shipped'
     
SELECT
     o.customer_id,
     o.order_id,
     o.order_status
FROM orders o
WHERE
     o.order_status = 'shipped'

