SELECT *

FROM employees

WHERE employee_ıd in
(
SELECT employee_ıd

FROM employee_terrıtorıes

WHERE terrıtory_ıd in
(
SELECT terrıtory_ıd

FROM terrıtorıes

WHERE regıon_ıd in
(
SELECT regıon_ıd

FROM regıon

WHERE regıon_ıd = 1
)
)
)
 