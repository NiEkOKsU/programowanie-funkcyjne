fst2Eq :: Eq a => [a] -> Bool
fst2Eq (x : y : _) | x == y = True
fst2Eq _                    = False

fst2Mod0 (x : y : _) | x `mod` y == 0 = True
fst2Mod0 _                    = False