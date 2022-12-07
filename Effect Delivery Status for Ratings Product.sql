select review_score,case
	when timespan<0 then 'Late'
	when timespan>0 then 'Faster'
	else 'On Scedule'
end as status_delivery,count(product_id) as total_product,count(distinct order_id) as total_order from 
  (select product_id,tb.order_id,review_score,timespan from
    (select od.order_id,review_score, datediff(order_estimated_delivery_date,order_delivered_customer_date) as timespan
    from olist_order_reviews_dataset rev join olist_orders_dataset od 
    on rev.order_id =od.order_id where order_status='delivered')tb 
  join olist_order_items_dataset it 
  on tb.order_id=it.order_id ) tb2 
group by review_score,status_delivery order by status_delivery
