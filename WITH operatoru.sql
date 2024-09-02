with ort_maas as

(
    SELECT yonetıcı_ıd , round(avg(maas),2) as ortalama
    
    FROM personel
    
    WHERE not yonetıcı_ıd ıs null
    
    GROUP BY yonetıcı_ıd

)

SELECT ad , soyad , maas , pr.yonetıcı_ıd , ortalama

FROM personel pr , ort_maas om

WHERE pr.yonetıcı_ıd = om.yonetıcı_ıd

        and om.ortalama > 4000