SELECT ad, soyad , unvan , maas

FROM personel

WHERE maas > (
                SELECT maas 
                
                FROM personel
                
                WHERE personel_ıd = 5007
             )
             
   