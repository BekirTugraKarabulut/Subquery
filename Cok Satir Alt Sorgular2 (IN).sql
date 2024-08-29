SELECT company_name , contact_name , phone

FROM customers

WHERE customer_ıd ın (
                        SELECT distinct customer_ıd
                        
                        FROM orders
                     )