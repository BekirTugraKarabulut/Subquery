--- ANY Kullanımı ---

SELECT ad , soyad , unvan , maas

FROM personel

WHERE maas < ANY (
                    SELECT maas
                    
                    FROM personel
                    
                    WHERE unvan = 'UZMAN'
                    );
                    
--- Max grup fonksiyonu ile bulma ---                    

SELECT ad , soyad , unvan , maas

FROM personel

WHERE maas < (
                    SELECT max(maas)
                    
                    FROM personel
                    
                    WHERE unvan = 'UZMAN'
                    );
                    


--- EXISTS ile çözüm ---

SELECT ad , soyad , unvan , maas

FROM personel ps1

WHERE EXISTS (
                    SELECT 1  -- NULL da yazılabilir . --
                    
                    FROM personel ps2 
                    
                    WHERE unvan = 'UZMAN'
                    
                          and ps1.maas < ps2.maas  
                    
                    );         
                    
                    
                    
                    
                    
                    
                    
                    
                    