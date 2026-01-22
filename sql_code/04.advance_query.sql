--------------------- JOIN -----------------------------
  select o.order_id,		u.name,		p.product_name,		o.order_amount,		o.payment_method,		o.status,		p.price
	from orders o
	join products p on p.product_id = o.product_id
	join users u on	u.user_id = o.user_id
	where		o.status = 'Completed'
	order by order_id

--------------------- SUBQUERY ---------------------------
-- Template :
select <pilih kolom dari query A> 
  from (
  <isi query A>
  )  
  
-- Code Example :
select
	name,
	product_name,
	order_amount,
	price,
	price * order_amount as total_purchase
from
	(
	select o.order_id,		u.name,		p.product_name,		o.order_amount,		o.payment_method,		o.status,		p.price
	from orders o
	join products p on p.product_id = o.product_id
	join users u on	u.user_id = o.user_id
	where		o.status = 'Completed'
	order by order_id
	)
order by
	total_purchase desc


-------------- CTE (COMMON TABLE EXPRESSION) -------------
-- Template :
with <nama_tabel_CTE> as (
  <tulis query disini>
)
select <pilih kolom dari query CTE> from  <nama_tabel_CTE>
  
-- Code Example :  
with purchase_summary as (
select
	name,
	product_name,
	order_amount,
	price,
	price * order_amount as total_purchase
from
	(
	select o.order_id,		u.name,		p.product_name,		o.order_amount,		o.payment_method,		o.status,		p.price
	from orders o
	join products p on p.product_id = o.product_id
	join users u on	u.user_id = o.user_id
	where		o.status = 'Completed'
	order by order_id
	)
order by
	total_purchase desc) 
select	* from	purchase_summary
where	total_purchase > 1000;
