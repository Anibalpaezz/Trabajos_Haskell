-- Ejercicio 1.1. Definir la función factorial tal que factorial n es el factorial de n.

module Ejercicio1_1 where

factorial :: Int -> Int -- Declaramos el tipo de la funcion, toma un entero y devuelve un entero
factorial 0 = 1 -- Caso base, el factorial de 0 es 1
factorial n = n * factorial (n - 1) -- Caso recursivo, el factorial de n es n multiplicado por el factorial de n-1

{-

Otras formas de hacerlo:

fact1 :: Integer -> Integer
fact1 n = if n == 0 then 1
else n * fact1 (n-1)

fact2 :: Integer -> Integer
fact2 n
| n == 0 = 1
| otherwise = n * fact2 (n-1)

fact3 :: Integer -> Integer
fact3 0 = 1
fact3 n = n * fact3 (n-1)

fact4 :: Integer -> Integer
fact4 n
| n == 0 = 1
| n >= 1 = n * fact4 (n-1)

fact5 :: Integer -> Integer
fact5 0 = 1
fact5 (n+1) = (n+1) * fact5 n

fact6 :: Integer -> Integer
fact6 n = product [1..n]

fact7 :: Integer -> Integer
fact7 n = foldr (*) 1 [1..n]




-}




