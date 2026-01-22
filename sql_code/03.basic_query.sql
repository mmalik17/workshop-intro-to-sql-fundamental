------- BASIC QUERY : SELECT -----------------------------------------------------------

select * from users u;

select * from products ;

select name from users;

select * from users u;
limit 4;

select distinct(city) from users;

------- BASIC QUERY : WHERE -----------------------------------------------------------

select * from users u 
where city = 'London';

select * from products p 
where price > 300;

select * from products p where category = 'Fashion';

------- BASIC QUERY : WHERE (with logical operator : LIKE, AND, OR, NOT, IN) ----------
select name, email from users u 
where email like '%gmail.com';

select name, email from users u 
where email like 'j%';

select name, email, city from users
where email like '%gmail.com' or city = 'London';

select name, email from users u 
where email not like '%gmail.com';

select name, email, city from users u 
where city = 'Liverpool' or city = 'Manchester' or city = 'Oxford';

select name, email, city from users u
where city in ('Liverpool','Manchester','Oxford')

select * from products p 
order by price desc;

------- BASIC QUERY : arithmetic operation : + - * / ------

select product_name, price, price*0.9 as price_after_disc
from products p ;

select product_name, price, price/2 as half_price
from products p ;

------ BASIC QUERY : AGGREGATION (MIN, MAX, SUM, COUNT, AVG) --------------

select * from orders;
select sum(order_amount) from orders;
select count(order_amount) from orders;
select avg(order_amount) from orders;
select MAX(order_amount) from orders;

------- BASIC QUERY : AGGREGATION with GROUPBY AND HAVING --------------
select payment_method, count(order_amount) as jumlah_order
from orders
group by payment_method
having count(order_amount) > 10
order by jumlah_order desc;


------- BASIC QUERY : CASE WHEN ------------------------------------------

select PRODUCT_NAME, PRICE,
	case when PRICE < 200 then 'MURAH'
	when PRICE < 350 then 'SEDANG'
	else 'MAHAL'
	end as Kategori_Harga
from products;
