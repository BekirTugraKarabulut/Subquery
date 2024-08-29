SELECT *

FROM personel

WHERE (yonetıcı_ıd , unvan) ın (
                                    SELECT yonetıcı_ıd , unvan
                                    
                                    FROM personel
                                    
                                    WHERE personel.personel_ıd = 5001
                                )