# Data-Analysis-for-Brazilian-E-Commerce-Public-
Dataset berasal dari https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce?select=olist_order_payments_dataset.csv,merupakan kumpulan data order Brazilian di ecommerce Olist Store yang terdiri atas 9 dataset. Seperti digambarkan pada diagram dibawah ini.

<img width="488" alt="image" src="https://user-images.githubusercontent.com/49335273/206182773-f6cfef21-f693-4faf-b6c1-b50355c53a4d.png">

- olist_customers_dataset merupakan kumpulan data customer dan lokasinya, digunakan untuk identifikasi unik customer pada dataset order dan lokasi pengiriman pesanan.
- olist_geolocation_dataset berisi informasi Brazilian zip codes dan koordinat latitude/longitudenya.
- olist_order_items_dataset informasi pembelian item disetiap order.
- olist_order_payments_dataset berisi informasi pilihan pembayaran.
- olist_order_reviews_dataset kumpulan data review dari customer untuk setiap kali pemesanan.
- olist_orders_dataset informasi lengkap untuk data order.
- olist_products_dataset memberikan informasi terkait produk yang terjual di Olist Store.
- olist_sellers_dataset berisi informasi seller yang memasok product di Olist store dan lokasinya, sebagai identifikasi seller pada setiap product.
- product_category_name_translation terjemahan product_category_name ke inggris.
 
 Pada project kali ini akan dilakukan beberapa analisis untuk lebih memahami penjualan yang terjadi pada Olist Store yang nantinya dapat digunakan untuk melakukan pengambilan strategi bisnis yang sesuai. 
 - Total customer/ user pada setiap tahun dan growth percentage dari awal tahun hingga akhir
   |yearss|total_customer|growth_percentage|
   |------|--------------|-----------------|
   |2,016 |299           |0                |
   |2,017 |43,395        |99.31            |
   |2,018 |51,849        |16.31            |

  - Daftar angka density masing-masing seller state, density adalah pembagian jumlah customer dengan total order pada state tersebut. 
   
    |seller_state|customer_num|total_penjualan|density|
    |------------|------------|---------------|-------|
    |AC          |1           |1              |1      |
    |AM          |3           |3              |1      |
    |PI          |12          |12             |1      |
    |RO          |14          |14             |1      |
    |MS          |48          |50             |0.96   |
    |MA          |388         |405            |0.958  |
    |PB          |36          |38             |0.9474 |
    |MT          |137         |145            |0.9448 |
    |CE          |88          |94             |0.9362 |
    |RN          |51          |56             |0.9107 |
    |DF          |814         |896            |0.9085 |
    |PE          |404         |447            |0.9038 |
    |SE          |9           |10             |0.9    |
    |RS          |1,970       |2,193          |0.8983 |
    |RJ          |4,294       |4,796          |0.8953 |
    |SC          |3,627       |4,051          |0.8953 |
    |MG          |7,793       |8,774          |0.8882 |
    |GO          |458         |517            |0.8859 |
    |PA          |7           |8              |0.875  |
    |PR          |7,525       |8,638          |0.8712 |
    |BA          |558         |641            |0.8705 |
    |ES          |317         |372            |0.8522 |
    |SP          |67,913      |79,947         |0.8495 |
  
  - Produk dengan penjualan tertinggi kedua dan penjualan terendah kedua
  
    |product_category_name        |product_category_name_english|total_selling|
    |-----------------------------|-----------------------------|-------------|
    |beleza_saude                 |health_beauty                |9,670        |
    |fashion_roupa_infanto_juvenil|fashion_childrens_clothes    |8            |
    
  - Presentasi jumlah produk yang terkirim sesuai jadwal, telat, atau terlalu cepat dari jadwal
  
   |status_delivery|product_num|order_num|percentage_order|
   |---------------|-----------|---------|----------------|
   |Faster         |101,475    |88,644   |91.88           |
   |Late           |7,264      |6,534    |6.77            |
   |On Scedule     |1,458      |1,300    |1.35            |
   
- Keterlambatan pengiriman 
   |review_score|status_delivery|total_product|total_order|
   |------------|---------------|-------------|-----------|
   |1           |Faster         |6,802        |4,625      |
   |2           |Faster         |2,386        |1,848      |
   |3           |Faster         |6,493        |5,545      |
   |4           |Faster         |15,858       |14,189     |
   |5           |Faster         |48,204       |43,270     |
   |1           |Late           |3,044        |2,689      |
   |2           |Late           |462          |425        |
   |3           |Late           |595          |549        |
   |4           |Late           |557          |512        |
   |5           |Late           |908          |811        |
   |1           |On Scedule     |119          |89         |
   |2           |On Scedule     |42           |37         |
   |3           |On Scedule     |156          |140        |
   |4           |On Scedule     |253          |230        |
   |5           |On Scedule     |567          |510        |




 
