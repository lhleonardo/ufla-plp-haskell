concatenar :: (Show a) => [a] -> [a] -> [a]
concatenar [] lista = lista
concatenar [x] lista = x : lista
concatenar (h:t) lista = h : concatenar t lista

main = do
    print $ concatenar [] [1]