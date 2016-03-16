-- Get all customers and their addresses.
SELECT *
FROM customers LEFT JOIN addresses
ON customers.id = addresses.customer_id;


-- Get all orders and their line items.
SELECT *
FROM orders LEFT JOIN line_items
ON orders.id = line_items.order_id;

-- Which warehouses have cheetos?
SELECT *
FROM warehouse LEFT JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
WHERE product_id = 5;



-- Which warehouses have diet pepsi?
SELECT *
FROM warehouse LEFT JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
WHERE product_id = 6;


-- Get the number of orders for each customer. NOTE: It is OK if those
--without orders are not included in results.
SELECT *
FROM customers LEFT JOIN addresses
ON customers.id = addresses.customer_id
LEFT JOIN orders
ON addresses.id = orders.address_id;

-- How many customers do we have?
SELECT COUNT (DISTINCT id)
FROM customers;


-- How many products do we carry?
SELECT COUNT (DISTINCT id)
FROM products;

-- What is the total available on-hand quantity of diet pepsi?
SELECT sum(on_hand)
FROM warehouse_product
WHERE product_id = 6;
