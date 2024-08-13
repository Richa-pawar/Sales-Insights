# Show all customer records
SELECT * FROM customers;

# Show all transactions records
SELECT * FROM transactions;

# Show total number of customers
SELECT COUNT(*) FROM customers;

# Show total number of transactions
SELECT COUNT(*) FROM transactions;

# Show transactions for Chennai market (market code for chennai is Mark001)
SELECT * 
FROM transactions
WHERE market_code = 'Mark001';

# Show distinct product codes that were sold in chennai
SELECT DISTINCT product_code 
FROM transactions
WHERE market_code = 'Mark001';

# Show transactions where currency is US dollars
SELECT * 
FROM transactions
WHERE currency = 'USD';

# Show transactions in 2020 join by date table
SELECT * 
FROM transactions tr
JOIN  date da
     ON tr.order_date = da.date
WHERE da.year = '2020';

# Show total revenue in year 2020,
SELECT SUM(sales_amount) 
FROM transactions tr
JOIN  date da
     ON tr.order_date = da.date
WHERE da.year = '2020' And tr.currency = 'INR\r' OR tr.currency = 'USD\r'
;

# Show total revenue in year 2020, January Month,
SELECT SUM(sales_amount) 
FROM transactions tr
JOIN  date da
     ON tr.order_date = da.date
WHERE da.year = '2019' AND da.month_name = 'January' AND (tr.currency = 'INR\r' OR tr.currency = 'USD\r')
;

# Show total revenue in year 2020 in Chennai
SELECT SUM(sales_amount)
FROM transactions tr
JOIN  date da
     ON tr.order_date = da.date
WHERE da.year = '2020' AND tr.market_code = 'Mark001';

# Show total revenue in year 2020 in Mumbai
SELECT SUM(sales_amount)
FROM transactions tr
JOIN  date da
     ON tr.order_date = da.date
WHERE da.year = '2020' AND tr.market_code = 'Mark002';

# Show total revenue in year 2019 in Chennai
SELECT SUM(sales_amount)
FROM transactions tr
JOIN  date da
     ON tr.order_date = da.date
WHERE da.year = '2019' AND tr.market_code = 'Mark001';