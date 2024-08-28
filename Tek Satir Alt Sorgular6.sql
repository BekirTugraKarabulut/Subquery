SELECT ad , soyad ,
(
    SELECT ds.dept_ısmı
    FROM departman ds
    WHERE ds.dept_ıd = ps.dept_ıd
) as dept_ismi

FROM personel ps