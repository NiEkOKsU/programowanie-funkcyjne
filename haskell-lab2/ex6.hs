fib :: (Num a, Eq a) => a -> a
fib n =
 if n == 0 || n == 1 then n
 else fib (n - 2) + fib (n - 1)

sum' :: Num a => [a] -> a
sum' []   = 0
sum' (x:xs) = x + sum' xs

prod' :: Num a => [a] -> a
prod' [x] = x
prod' (x:xs) = x * prod' xs

length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs

or' :: [Bool] -> Bool
or' [x] = x
or' (x:xs) = x || or' xs

and' :: [Bool] -> Bool
and' [x] = x
and' (x:xs) = x && and' xs

elem' :: Eq a => a -> [a] -> Bool
elem' y [x] = y == x
elem' y (x:xs) = y == x || elem' y xs

doubleAll :: Num t => [t] -> [t] -- doubleAll [1,2] = [2,4]
doubleAll [x] = [x*2]
doubleAll (x:xs) = [2*x] ++ doubleAll xs

squareAll :: Num t => [t] -> [t] -- squareAll [2,3] = [4,9]
squareAll [x] = [x^2]
squareAll (x:xs) = [x^2] ++ squareAll xs

selectEven :: Integral t => [t] -> [t] -- selectEven [1,2,3] = [2]
selectEven [x] = if x `mod` 2 == 0 then [x] else []
selectEven (x:xs) = if x `mod` 2 == 0 then [x]  ++ selectEven xs else [] ++ selectEven xs

sum'2 :: Num a => [a] -> a
sum'2 xs = loop 0 xs
 where loop acc []     = acc
       loop acc (x:xs) = loop (x + acc) xs

sum'3 :: Num a => [a] -> a
sum'3 = loop 0
 where loop acc []     = acc
       loop acc (x:xs) = loop (x + acc) xs

prod'2 :: Num a => [a] -> a
prod'2 = loop 1
    where loop acc [] = acc
          loop acc (x:xs) = loop (x*acc) xs

length'2 :: Num a => [a] -> a
length'2 = loop 0
    where loop acc [] = acc
          loop acc (x:xs) = loop (acc + 1) xs