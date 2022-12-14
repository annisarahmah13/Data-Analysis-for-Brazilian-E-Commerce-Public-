select yearss,count(customer_unique_id) as total_customer,
ifnull(round(((count(customer_unique_id)-lag(count(customer_unique_id)) over (order by yearss))/count(customer_unique_id)) *100,2),0) as growth_percentage 
from
    (select customer_unique_id,min(years) as yearss from 
        (select a.customer_id,customer_unique_id,year(order_approved_at) as years from 
         olist_orders_dataset a join olist_customers_dataset b 
         on a.customer_id =b.customer_id where order_status!='canceled') table1
     group by customer_unique_id) table2
where yearss is not null 
group by yearss
order by yearss;

