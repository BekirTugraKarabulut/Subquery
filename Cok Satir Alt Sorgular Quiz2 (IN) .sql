SELECT c.customer_ıd , c.company_name , c.contact_name , adet

FROM customers c,

(
     SELECT customer_ıd , count(*) as adet
     
     FROM orders
    
     GROUP BY orders.customer_ıd
     
     HAVING count(*) > 10

) adet_sayisi

WHERE c.customer_ıd = adet_sayisi.customer_ıd