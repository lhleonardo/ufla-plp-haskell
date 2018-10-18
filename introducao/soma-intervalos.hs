somaIntervalos :: Int -> Int -> Int
somaIntervalos a b
    | a == b = a
    | a < b  = a + somaIntervalos (a+1) b
    | otherwise = somaIntervalos b a

main = do
    print "Soma intervalo 3-19"
    print $ somaIntervalos 3 19
    print $ somaIntervalos 19 3