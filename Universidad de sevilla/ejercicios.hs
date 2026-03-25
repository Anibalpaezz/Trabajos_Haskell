-- Ejercicio 1.1. Definir la función factorial tal que factorial n es el factorial de n.

module Ejercicios where

doblete x = x + x

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
\| n == 0 = 1
\| otherwise = n * fact2 (n-1)

fact3 :: Integer -> Integer
fact3 0 = 1
fact3 n = n * fact3 (n-1)

fact4 :: Integer -> Integer
fact4 n
\| n == 0 = 1
\| n >= 1 = n * fact4 (n-1)

fact5 :: Integer -> Integer
fact5 0 = 1
fact5 (n+1) = (n+1) * fact5 n

fact6 :: Integer -> Integer
fact6 n = product [1..n]

fact7 :: Integer -> Integer
fact7 n = foldr (*) 1 [1..n]

-}

{-
Ejercicio 1.2 Definir la función comb tal que comb n k es el número de combinaciones de n
elementos tomados de k en k
-}
comb :: Int -> Int -> Int
comb n k = factorial n `div` (factorial k * factorial (n - k))

-- Ejercicio 3 Definir la función impar tal que impar x se verifica si el número x es impar
impar :: Int -> Bool
impar n = n `mod` 2 == 1

{-

Otras formas de hacerlo:

impar1 :: Integer -> Bool
impar1 = odd

impar2 :: Integer -> Bool
impar2 x = not (even x)

impar3 :: Integer -> Bool
impar3 = not . even

impar4 :: Integer -> Bool
impar4 x | x > 0 = impar4_aux x
| otherwise = impar4_aux (-x)
where impar4_aux 0 = False
impar4_aux 1 = True
impar4_aux (n+2) = impar4_aux n

-}

-- Ejercicio 4 Definir la función cuadrado tal que cuadrado x es el cuadrado del número x
cuadrado :: Int -> Int
cuadrado x = x * x

-- Ejercicio 5
sumaCuadrados :: [Int] -> Int
sumaCuadrados l = sum (map cuadrado l)

-- Ejercicio 6
raices :: Double -> Double -> Double -> [Double]
raices a b c = [ (-b+sqrt(b*b-4*a*c))/(2*a),(-b-sqrt(b*b-4*a*c))/(2*a) ]

-- Ejercicio 7
n_abs_1 :: (Num a, Ord a) => a -> a
n_abs_1 x = if x > 0 then x else (-x)

-- Ejercicio 8
signum_1 :: (Num a, Ord a) => a -> a
signum_1 x = if x > 0 then 1 else if x == 0 then 0 else (-1)

{-
n_signum x
| x > 0 = 1
| x == 0 = 0
| otherwise = -1
-}

-- Ejercicio 9


