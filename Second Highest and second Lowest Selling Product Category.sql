select * from (
  select row_number() over (order by total_selling desc)as ranks,tb1.product_category_name as Portuguese_name,
  product_category_name_english as English_name, total_selling from 
    (select product_category_name,count(product_category_name) as total_selling
    from olist_order_items_dataset orders join olist_products_dataset prod
    on orders.product_id=prod.product_id group by product_category_name) tb1 
  join product_category_name_translation tr 
  on tb1.product_category_name=tr.product_category_name) tb2
where ranks=2 or ranks=70;
