SELECT * 

FROM personel

WHERE yonetıcı_ıd IN
(

SELECT yonetıcı_ıd

FROM yonetıcı

WHERE sevıye = 1

);

-- EXISTS Kullanımı --

SELECT *

FROM personel ps

WHERE EXISTS (
                SELECT 1
                
                FROM yonetici yn
                
                WHERE ps.yonetıcı_ıd = yn.yonetıcı_ıd
                      and seviye = 1  
                );
