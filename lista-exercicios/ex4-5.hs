mdc :: Int -> Int -> Int
mdc a b  
    | a == b = a
    | a > b = mdc (a - b) b
    | a < b = mdc b (b - a)

mmc :: Int -> Int -> Int
mmc a b 
    | a == b = a 
    | a == 0 = 0
    | b == 0 = 0
    | otherwise = div (b * a) valor_mdc
    where 
        valor_mdc = mdc a b

main = do
    print $ mdc 12 20
    print $ mmc 17 21