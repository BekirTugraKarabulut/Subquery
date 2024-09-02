--- Hepsinin en büyüğünü bulur . ---
SELECT ad , soyad , unvan , maas

FROM personel

WHERE maas > ALL (3000,4000,5000)

ORDER BY 4;


--- Hepsinin en küçüğünü bulur . ---

SELECT ad , soyad , unvan , maas

FROM personel

WHERE maas < ALL (3000,4000,5000)

ORDER BY 4;

