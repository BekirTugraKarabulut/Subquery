SELECT konum_ıd , count(*) as personel_adeti

FROM personel

GROUP BY konum_ıd 

HAVING count(*) > (
                    SELECT count(*)
                    
                    FROM personel
                    
                    WHERE personel.konum_ıd = 3
                            
                   )
                   
ORDER BY 1                   

