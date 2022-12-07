select seller_state,count(distinct customer_unique_id) as customer_num,
count(order_id) as total_penjualan,count(distinct customer_unique_id)/count(order_id)  as density from 
    (select tb1.order_id,seller_id,customer_unique_id from 
        (select order_id,customer_unique_id from olist_customers_dataset ct join
        olist_orders_dataset od1 on ct.customer_id=od1.customer_id where order_status !='canceled') tb1 
    join olist_order_items_dataset od on tb1.order_id =od.order_id) tb2 
join olist_sellers_dataset sl on tb2.seller_id=sl.seller_id
group by seller_state order by density desc;
