zipa3 :: [a] -> [a] -> [a] -> [(a, a, a)]
zipa3 l1 l2 l3 = [(x, y, z) | x <- l1, y <- l2, z <- l3]

zipa4 :: [a] -> [a] -> [a] -> [a] -> [(a, a, a, a)]
zipa4 l1 l2 l3 l4 = [(x, y, z, w) | (x, y) <- (zip l1 l2), (z, w) <- (zip l3 l4)]

main = do
    print $ zipa3 [1..4] [5..8] [9..12]