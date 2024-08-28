SELECT ad , soyad , unvan ,maas || ' TL' as maas

FROM personel

WHERE unvan = (
               SELECT unvan 
               
               FROM personel 
               
               WHERE personel_ıd = 5025
               )