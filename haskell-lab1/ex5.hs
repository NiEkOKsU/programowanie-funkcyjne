sgn :: Int -> Int
sgn n = if n < 0
       then -1
       else if n == 0
            then 0
            else 1
absInt :: Int -> Int
absInt n = if n < 0
        then (-n)
        else n
min2Int :: (Int, Int) -> Int
min2Int (m, n) = if m < n
        then m
        else n