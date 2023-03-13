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
 
 - Total customer/ user pada setiap tahun dan growth percentage dari awal tahun hingga akhir, growth percentage tertinggi yaitu pada tahun 2017 dari jumlah customer 299 naik menjadi 43.395.
 
   |yearss|total_customer|growth_percentage|
   |------|--------------|-----------------|
   |2,016 |299           |0                |
   |2,017 |43,395        |99.31            |
   |2,018 |51,849        |16.31            |

  - Daftar angka density masing-masing seller state, density adalah pembagian jumlah customer dengan total order pada state tersebut. Seller yang memiliki density oder tertinggi yaitu seller AC, AM, PI, dan RO dengan nilai density 1, namun jika dilihat dari total customer dan total order maka ketiga seller tersebut bukan pilihan yang baik untuk area warehouse karena jumlah customer dan total order relatif rendah. Perlu dilakukan analisa dan strategi bisnis untuk meningkatkan jumlah customer dan total order diketiga seller tersebut.
   
    |seller_state|customer_num| total_order   |density|
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
  
  - Produk dengan penjualan tertinggi kedua yaitu beleza saude dan penjualan terendah kedua yaitu fashion roupa infanto juvenil.
  
    |product_category_name        |product_category_name_english|total_selling|
    |-----------------------------|-----------------------------|-------------|
    |beleza_saude                 |health_beauty                |9,670        |
    |fashion_roupa_infanto_juvenil|fashion_childrens_clothes    |8            |
    
  - Jumlah produk yang terlambat dikirimkan dari jadwal sebanyak 7.264 dengan jumlah order sebanyak 6.534. Presentasi order tertinggi yaitu order yang dikirimkan lebih cepat dari jadwal pengiriman, dan presentasi order yang telat dikirimkan tidak terlalu tinggi yaitu sebesar 6,77 persen.
  
    |status_delivery|product_num|order_num|percentage_order|
    |---------------|-----------|---------|----------------|
    |Faster         |101,475    |88,644   |91.88           |
    |Late           |7,264      |6,534    |6.77            |
    |On Scedule     |1,458      |1,300    |1.35            |
   
- Analisis apakah keterlambatan pengiriman berpengaruh terhadap review score yang diberikan customer, dilihat dari tabel produk yang terjual dan jumlah pesanan berdasarkan status delivery dan review score terlihat bahwa review score terbanyak pada pemesanan dengan delivery status late yaitu 1 dan pada delivery status faster yaitu pada review score 5.

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

Untuk lebih menguatkan argumen yang didapat dari tabel diatas maka dilakukan analisis untuk setiap status delivery berdasarkan presentasi pemesanan untuk setiap review scorenya.

  |status_delivery|total_product|total_order|         
  |---------------|-------------|-----------|
  |Faster         |79,743       |69,379     |
  |Late           |5,566        |4,980      |
  |On Scedule     |1,137        |1,001      |
  
  |review_score|status_delivery|total_product_pct|total_order_pct|
  |------------|---------------|-----------------|---------------|
  |1           |Faster         |0.0853           |0.0667         |
  |2           |Faster         |0.0299           |0.0266         |
  |3           |Faster         |0.0814           |0.0799         |
  |4           |Faster         |0.1989           |0.2045         |
  |5           |Faster         |0.6045           |0.6237         |
  
  |review_score|status_delivery|total_product_pct|total_order_pct|
  |------------|---------------|-----------------|---------------|
  |1           |Late           |0.5469           |0.54           |
  |2           |Late           |0.083            |0.0853         |
  |3           |Late           |0.1069           |0.1102         |
  |4           |Late           |0.1001           |0.1028         |
  |5           |Late           |0.1631           |0.1629         |
  
  |review_score|status_delivery|total_product_pct|total_order_pct|
  |------------|---------------|-----------------|---------------|
  |1           |On Scedule     |0.1047           |0.0889         |
  |2           |On Scedule     |0.0369           |0.037          |
  |3           |On Scedule     |0.1372           |0.1399         |
  |4           |On Scedule     |0.2225           |0.2298         |
  |5           |On Scedule     |0.4987           |0.5095         |
  
Dari ketiga tabel presentasi pemesanan untuk setiap status delivery dan review score maka dapat dilihat bahwa pada pemesanan dengan status delivery faster presentase tertinggi yaitu pada review score 5 sebesar 0.6 penjualan dan pada pemesanan dengan status delivery late presentase teringgi dengan review score 1 sedangkan pada pemesanan dengan status delivery on scedule presentase terbesar pada review score 5. sehingga dapat disimpulkan bahwa status delivery mempengaruhi review score yang diberikan oleh customer.


  


  
  
  


 
