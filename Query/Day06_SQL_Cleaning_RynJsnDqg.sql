-- ---------------------------
-- Part A: Finding the Issues
-- ---------------------------

-- Q3. How many total rows are currently in the orders table?
SELECT COUNT(*) 
FROM orders;
-- Result: 30 rows.

-- Q4. What are the unique values in the city column?
SELECT DISTINCT city 
FROM orders;
-- Result: Inconsistent casing found for cebu city/Cebu City, davao city/Davao City, MAKATI/Makati, and quezon city/Quezon City. Junk entry 'test' found.

-- Q5. What are the unique values in the category column?
SELECT DISTINCT category 
FROM orders;
-- Result: Inconsistent casing found for accessories/Accessories/ACCESSORIES, electronics/Electronics, and storage/Storage. Junk entry 'test' found.

-- Q6. What are the unique values in the status column?
SELECT DISTINCT status 
FROM orders;
-- Result: Inconsistent casing found for completed/Completed/COMPLETED. Junk entry 'test' found.

-- Q7. How many rows have a NULL value in the email column?
SELECT COUNT(*) 
FROM orders 
WHERE email IS NULL;
-- Result: 3 rows.

-- Q8. Find the row that contains obvious test/junk data. What is the order_id?
SELECT * 
FROM orders 
WHERE customer_name 
LIKE '%test%';
-- Result: The test entry has an order_id of 26.


-- --------------------------
-- Part B: Fixing the Issues
-- --------------------------

-- Q9. Standardize the city names to proper case.
UPDATE orders 
SET city = 'Cebu City' 
WHERE LOWER(city) = 'cebu city';

UPDATE orders 
SET city = 'Davao City' 
WHERE LOWER(city) = 'davao city';

UPDATE orders 
SET city = 'Makati' 
WHERE LOWER(city) = 'makati';

UPDATE orders 
SET city = 'Quezon City' 
WHERE LOWER(city) = 'quezon city';

-- Q10. Standardize the category values to proper case.
UPDATE orders 
SET category = 'Accessories' 
WHERE LOWER(category) = 'accessories';

UPDATE orders 
SET category = 'Electronics' 
WHERE LOWER(category) = 'electronics';

UPDATE orders 
SET category = 'Storage' 
WHERE LOWER(category) = 'storage';

-- Q11. Standardize the status values.
UPDATE orders 
SET status = 'Completed' 
WHERE LOWER(status) = 'completed';

-- Q12. TRIM extra spaces from the customer_name column.
UPDATE orders 
SET customer_name = TRIM(customer_name);

-- Q13. DELETE statement to remove the test/junk row found in Q8.
DELETE 
FROM orders 
WHERE order_id = 26;

-- Q14. Replace NULL emails with a placeholder.
UPDATE orders 
SET email = 'not.provided@placeholder.com' 
WHERE email IS NULL;


-- ----------------------------
-- Part C: Verifying the Fixes
-- ----------------------------

-- Q15. Check unique cities again.
SELECT DISTINCT city 
FROM orders;
-- Result: All cities are now properly cased with no duplicates or 'test' entries.

-- Q16. Check unique categories again.
SELECT DISTINCT category 
FROM orders;
-- Result: Only three distinct, properly formatted categories remain: Accessories, Electronics, and Storage.

-- Q17. Check for NULL emails again.
SELECT COUNT(*) 
FROM orders 
WHERE email IS NULL;
-- Result: 0 rows.

-- Q18. Check the final row count.
SELECT COUNT(*) 
FROM orders;
-- Result: 29 rows.