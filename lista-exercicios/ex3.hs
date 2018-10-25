somar_inteiros :: Int -> Int -> Int
somar_inteiros inicio fim 
    | inicio == fim = inicio + fim
    | otherwise = somar_inteiros_faixa [inicio..fim]

somar_inteiros_faixa :: [Int] -> Int
somar_inteiros_faixa [x] = x
somar_inteiros_faixa (h:t) = h + somar_inteiros_faixa t

main = do
    print $ somar_inteiros 2 10