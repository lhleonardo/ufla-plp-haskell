maioresQueUmaMedia :: Int -> Int -> Int -> Int
maioresQueUmaMedia a b c = 
    | a > media && b > media = 2
    | a > media && c > media = 2
    | b > media && c > media = 2
    | a > media = 1
    | b > media = 1
    | c > media = 1
    | otherwise = 0
    where
        media = div (a + b + c) 3