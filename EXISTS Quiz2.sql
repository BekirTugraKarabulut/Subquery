SELECT *

FROM shıppers sh

WHERE EXISTS (
                SELECT 1
                
                FROM orders os

                WHERE os.shıp_vıa = sh.shıpper_ıd

                )