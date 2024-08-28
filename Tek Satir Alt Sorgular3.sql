SELECT *

FROM personel 

WHERE maas = (

        SELECT min(maas) as maas

        FROM personel
        
             )


