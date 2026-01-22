------- TEMPLATE CODE ---------
CREATE VIEW <nama_view> AS
<insert_script_anda_disini>
  
------- EXAMPLE CODE ----------
-- notes : sebelum execute query dibawah, pastikan tabel orders, products, dan users harus sudah di create dan terisi -- 
	
CREATE VIEW test_view AS
select
	o.order_id,
	u.name,
	p.product_name,
	o.order_amount,
	o.payment_method,
		o.status,
	p.price
from
		orders o
join products p on
	p.product_id = o.product_id
join users u on
	u.user_id = o.user_id
where
	o.status = 'Completed'
order by
	order_id;
