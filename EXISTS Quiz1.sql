SELECT *

FROM customers cs

WHERE NOT EXISTS 

(

SELECT 1

FROM orders os

WHERE os.customer_ıd = cs.customer_ıd

)