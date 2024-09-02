-- En büyükten daha küçüğü çağırır. --

SELECT ad , soyad , maas

FROM personel

WHERE maas < ANY (5000 , 6000 , 6500)

ORDER BY 3 desc;


-- En küçükten daha büyüğü çağırır. --

SELECT ad , soyad , maas

FROM personel

WHERE maas > ANY (6000 , 5000 , 6500)

ORDER BY 3 desc;