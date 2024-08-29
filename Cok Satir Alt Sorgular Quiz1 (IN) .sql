SELECT customer_ıd , company_name , contact_name

FROM customers 

WHERE customer_ıd ın(
                        SELECT customer_ıd
                        
                        FROM orders
                        
                        GROUP BY customer_ıd
                        
                        HAVING count(*) > 10 
                        
                    )