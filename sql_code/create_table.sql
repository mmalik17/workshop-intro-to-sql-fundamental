CREATE table IF NOT EXISTS orders (
order_id numeric primary KEY,
user_id numeric,
product_id numeric,
order_amount numeric,
payment_method varchar,
status varchar,
order_date DATE
);

CREATE table IF NOT EXISTS products (
product_id numeric,
product_name varchar,
category varchar,
price numeric
);

CREATE table IF NOT EXISTS users (
user_id numeric,
name varchar,
email varchar,
city varchar,
signup_date DATE
);
