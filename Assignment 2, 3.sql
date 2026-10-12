		-- ASSIGNMENT 2

SELECT * FROM products;

/* 1. CASE with AND & OR operators = stock status
we will classify products based on quantity available

in stock if quantity is 10 or more.
limited stock if quantity is between 5 and 9
out of stock soon if quantity is less than 5
*/

SELECT product_name, quantity,
	CASE
		WHEN quantity >= 10 THEN 'In stock'
		WHEN quantity >5 AND quantity <= 9 THEN 'Limited'
		ELSE 'Out of stock soon'
	END AS stock_status 
FROM products;


/* 2. CASE with LIKE operator -  category classification
check if the category name contains 'Electronics' or 'furniture' using LIKE
*/

SELECT product_name, category,
	CASE 
		WHEN category LIKE 'Electronics%' THEN 'Electronic item'
		WHEN category LIKE 'Furniture%' THEN 'Furniture item'
		ELSE 'Accessory Item'
	END AS category_classification
FROM products;