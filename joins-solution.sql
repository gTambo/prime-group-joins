

-- 1. Get all customers and their addresses.
SELECT * FROM "customers" 
JOIN "addresses" ON "customers"."id" ="addresses"."customer_id";


-- 2. Get all orders and their line items (orders, quantity and product).
SELECT * FROM "orders"
JOIN "line_items" ON orders.id = line_items.order_id
JOIN "products" ON line_items.product_id = products.id;

-- 3. Which warehouses have cheetos?
Delta warehouse has cheetos (shows true)
select "products"."description"='cheetos', "warehouse"."warehouse", "wp"."on_hand" from "products" 
JOIN "warehouse_product" as "wp" ON products.id = "wp".product_id
JOIN "warehouse" ON "wp".warehouse_id = warehouse.id
GROUP BY "products"."description", "warehouse"."warehouse", "wp"."on_hand";

-- 4. Which warehouses have diet pepsi?
Gamma, Alpha, delta warehouses show a true value for 'diet pepsi'
select "products"."description"='diet pepsi', "warehouse"."warehouse", "wp"."on_hand" from "products" 
JOIN "warehouse_product" as "wp" ON products.id = "wp".product_id
JOIN "warehouse" ON "wp".warehouse_id = warehouse.id
GROUP BY "products"."description", "warehouse"."warehouse", "wp"."on_hand";

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


-- 6. How many customers do we have?
SELECT count(*) FROM "customers";
shows 4

-- 7. How many products do we carry?
7 different types (found with query: SELECT count(*) FROM "products";)
152 total on hand (found with query: SELECT sum("on_hand") FROM "warehouse_product";)


-- 8. What is the total available on-hand quantity of diet pepsi?

