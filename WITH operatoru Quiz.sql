with siparis_adet as 

(

    SELECT customer_ıd , count(*) as adet
    
    FROM orders
    
    GROUP BY customer_ıd
    
    HAVING count(*) > 10

)

SELECT cs.customer_ıd , cs.company_name , cs.contact_name , sa.adet

FROM customers cs , siparis_adet sa

WHERE cs.customer_ıd = sa.customer_ıd
