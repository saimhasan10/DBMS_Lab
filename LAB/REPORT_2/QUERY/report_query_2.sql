
--Retrieve Phone Numbers of All Customers
SELECT phone_number
FROM customers;


--Find Customers Whose Names Start with 'D' or 'M'
SELECT customer_name
FROM customers
WHERE customer_name LIKE "D%" or "M%";

--Count Customers Residing on Main Street
SELECT count(*)
FROM customers
WHERE address like "%Main st%";