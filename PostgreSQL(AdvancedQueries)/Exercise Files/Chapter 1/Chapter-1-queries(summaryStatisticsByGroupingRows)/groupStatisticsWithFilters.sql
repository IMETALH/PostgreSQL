-- Find the number of orders placed in March and April for each customer

select customer,
	count(*) as total_orders,
	count(*) filter (where order_date >= '2021-03-01' and order_date <= '2021-03-31') as march_orders,
	count(*) filter (where order_date between '2021-04-01' and '2021-04-30') as april_orders
from orders
group by customer;

-- Another method to archieve the same goal
-- Aggregate functions can be applied to a subset of the data using filter
select customer,
	count(*) AS total_orders,
	count(*) filter (where extract(month from order_date) = 3) AS march_orders,
	count(*) filter (where extract(month from order_date) = 4) AS april_orders
from orders
group by customer;








-- Create a table for the Two Trees order data
CREATE TABLE orders (
    order_id    int GENERATED ALWAYS AS IDENTITY (START WITH 100 INCREMENT BY 1) NOT NULL PRIMARY KEY,
    order_date  date,
    customer    varchar(25)
);


-- Add data to the orders table
INSERT INTO orders (order_date, customer) VALUES
    ('2021-03-15', 'Bread Express'),
    ('2021-03-17', 'Green Gardens'),
    ('2021-03-19', 'Blue Vine'),
    ('2021-03-19', 'Blue Vine'),
    ('2021-03-20', 'Flavorville'),
    ('2021-03-21', 'Delish Food'),
    ('2021-03-22', 'Flavorville'),
    ('2021-03-23', 'Wild Rose'),
    ('2021-03-24', 'Wild Rose'),
    ('2021-03-25', 'Green Gardens'),
    ('2021-03-25', 'Bread Express'),
    ('2021-03-26', 'Green Gardens'),
    ('2021-03-26', 'Blue Vine'),
    ('2021-03-27', 'Flavorville'),
    ('2021-03-28', 'Wild Rose'),
    ('2021-03-28', 'Blue Vine'),
    ('2021-03-28', 'Delish Food'),
    ('2021-03-29', 'Delish Food'),
    ('2021-03-29', 'Bread Express'),
    ('2021-03-30', 'Green Gardens'),
    ('2021-03-31', 'Bread Express'),
    ('2021-04-01', 'Bread Express'),
    ('2021-04-03', 'Green Gardens'),
    ('2021-04-05', 'Blue Vine'),
    ('2021-04-05', 'Blue Vine'),
    ('2021-04-06', 'Flavorville'),
    ('2021-04-07', 'Delish Food'),
    ('2021-04-08', 'Flavorville'),
    ('2021-04-09', 'Wild Rose'),
    ('2021-04-10', 'Wild Rose'),
    ('2021-04-11', 'Green Gardens'),
    ('2021-04-11', 'Bread Express'),
    ('2021-04-12', 'Green Gardens'),
    ('2021-04-12', 'Blue Vine'),
    ('2021-04-13', 'Flavorville'),
    ('2021-04-14', 'Wild Rose'),
    ('2021-04-14', 'Blue Vine'),
    ('2021-04-14', 'Delish Food'),
    ('2021-04-15', 'Delish Food'),
    ('2021-04-15', 'Bread Express'),
    ('2021-04-16', 'Green Gardens'),
    ('2021-04-16', 'Bread Express'),
    ('2021-04-17', 'Green Gardens'),
    ('2021-04-19', 'Blue Vine'),
    ('2021-04-19', 'Blue Vine'),
    ('2021-04-20', 'Flavorville'),
    ('2021-04-21', 'Delish Food'),
    ('2021-04-22', 'Flavorville'),
    ('2021-04-23', 'Wild Rose'),
    ('2021-04-24', 'Wild Rose'),
    ('2021-04-25', 'Green Gardens'),
    ('2021-04-25', 'Bread Express'),
    ('2021-04-26', 'Green Gardens'),
    ('2021-04-26', 'Blue Vine'),
    ('2021-04-27', 'Flavorville'),
    ('2021-04-28', 'Wild Rose'),
    ('2021-04-28', 'Blue Vine'),
    ('2021-04-28', 'Delish Food'),
    ('2021-04-29', 'Delish Food'),
    ('2021-04-29', 'Bread Express'),
    ('2021-04-30', 'Green Gardens')
;