fib :: Int -> Int 
fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)


intervaloFib :: Int -> [Int]
intervaloFib n = [fib x | x <- [0..n]]

intervaloFibComLista :: Int -> [Int]
intervaloFibComLista n
    | n == 0 = [1]
    | n == 1 = [1, 1]
    | otherwise = elementos ++ [elementos !! (n - 1) + elementos !! (n - 2)]
    where
        elementos = intervaloFibComLista (n - 1)

main = do
    print $ fib 5
    print $ intervaloFibComLista 6