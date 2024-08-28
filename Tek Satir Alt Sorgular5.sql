SELECT (
          SELECT konum_adi
          
          FROM konum kn
          
          WHERE kn.konum_ıd = ps.konum_ıd

       ) as konumlar  , count(*) as personel_adet

FROM personel ps

GROUP BY konum_ıd 

HAVING count(*) > (
                    SELECT count(*)
                    
                    FROM personel
                    
                    WHERE personel.konum_ıd = 3
                            
                   )
ORDER BY 1                   

