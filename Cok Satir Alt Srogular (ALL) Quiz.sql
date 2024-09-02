SELECT *

FROM orders

WHERE freıght > ALL

(
SELECT freıght

FROM orders

WHERE freıght IN     (
                        SELECT max(freıght)
                        
                        FROM orders
                        
                        WHERE orders.shıp_country = 'Mexico'

                        )
                        )