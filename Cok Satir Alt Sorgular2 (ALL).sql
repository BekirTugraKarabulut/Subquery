--- ALL kullanımı ---
SELECT ad , soyad , unvan , ızın_gunu

FROM personel

WHERE ızın_gunu > ALL 
(
SELECT ızın_gunu

FROM personel

WHERE unvan = 'GRUP MÜDÜRÜ'
);


--- Operator ile kullanımı ---
SELECT ad , soyad , unvan , ızın_gunu

FROM personel

WHERE ızın_gunu > 
(
SELECT max(ızın_gunu)

FROM personel

WHERE unvan = 'GRUP MÜDÜRÜ'
);