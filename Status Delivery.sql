with table1 as
	(select orders.order_id,count(product_id) as product_num,
	date(order_estimated_delivery_date) as estimated,date(order_delivered_customer_date) as delivered,
	datediff(order_estimated_delivery_date,order_delivered_customer_date) as timespan
	from olist_orders_dataset orders join olist_order_items_dataset items 
	on orders.order_id=items.order_id where order_status='delivered' group by order_id )
select case
	when timespan<0 then 'Late'
	when timespan>0 then 'Faster'
	else 'On Scedule'
end as status_delivery,
sum(product_num) as product_num,
count( distinct order_id) as order_num ,round(count(order_id)/(select count(order_id) from table1)*100,2) as percentage_order
from table1 group by status_delivery
