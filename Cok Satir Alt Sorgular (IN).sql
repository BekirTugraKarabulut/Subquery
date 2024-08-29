SELECT *

FROM personel

WHERE personel_ıd in(

                SELECT personel_ıd

                FROM yonetıcı

                WHERE sevıye = 1
                
                )