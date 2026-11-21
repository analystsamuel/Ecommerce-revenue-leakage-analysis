-- Exploratory Data Analysis

CREATE TABLE ecommerce_sales (
    row_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(30) NOT NULL,
    order_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    fulfilment VARCHAR(20) NOT NULL,
    sales_channel VARCHAR(30) NOT NULL,
    ship_service_level VARCHAR(30) NOT NULL,
    style VARCHAR(50) NOT NULL,
    sku VARCHAR(60) NOT NULL,
    category VARCHAR(30) NOT NULL,
    size VARCHAR(10) NOT NULL,
    asin VARCHAR(20) NOT NULL,
    courier_status VARCHAR(20) NOT NULL,
    qty INT NOT NULL,
    currency VARCHAR(10) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    ship_city VARCHAR(100) NOT NULL,
    ship_state VARCHAR(100) NOT NULL,
    ship_postal_code VARCHAR(20) NOT NULL,
    ship_country VARCHAR(20) NOT NULL,
    promotion_ids TEXT NOT NULL,
    b2b VARCHAR(5) NOT NULL,
    fulfilled_by VARCHAR(50) NOT NULL);

SET GLOBAL local_infile = 1;

SHOW VARIABLES LIKE 'local_infile';

LOAD DATA LOCAL INFILE 'C:/Users/u/Documents/Data Analytics Project/Amazon Sales/Amazon Sales Clean.csv'
INTO TABLE ecommerce_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, order_date, status, fulfilment, sales_channel, ship_service_level,
 style, sku, category, size, asin, courier_status, qty, currency, amount,
 ship_city, ship_state, ship_postal_code, ship_country, promotion_ids,
 b2b, fulfilled_by);

select *
from ecommerce_sales es 

SELECT COUNT(*) AS total_rows,COUNT(DISTINCT order_id) AS total_orders,MIN(order_date) AS first_date,MAX(order_date) AS last_date,
SUM(amount) AS total_revenue
FROM ecommerce_sales;

SELECT status, COUNT(*) AS rows_with_zero_amount
FROM ecommerce_sales WHERE amount = 0
GROUP BY status ORDER BY rows_with_zero_amount DESC;









