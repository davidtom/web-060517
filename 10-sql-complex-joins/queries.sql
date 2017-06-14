-- A. Who are all of the customers that ordered an egg cream?
SELECT customers.name
FROM customers JOIN orders JOIN drinks
ON customers.id = orders.customer_id AND orders.drink_id = drinks.id
WHERE drinks.name = "egg cream soda";
-- B. Which customer brings in the most revenue

-- C. Which bartender brings in the most revenue

-- D. Which drink does the bar spend the most amount to produce?
