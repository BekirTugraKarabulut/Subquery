SELECT customer_ıd , company_name , contact_name

FROM customers cs

WHERE EXISTS (
                  SELECT os.customer_ıd
                  
                  FROM orders os 
                  
                  WHERE os.customer_ıd = cs.customer_ıd -- Şart işlemi alt sorguda yapılır (EXISTS) . --
                  
                  GROUP BY os.customer_ıd

                  HAVING count(*) > 10
                )
