produto_intervalo :: Int -> Int -> Int
produto_intervalo a b 
    | a == b = a
    | otherwise = a * produto_intervalo (a + 1) b