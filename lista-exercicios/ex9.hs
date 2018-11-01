_menor_raiz_aux :: Int -> Int -> Int
_menor_raiz_aux atual procurado 
    | resultado <= procurado = _menor_raiz_aux (atual + 1) procurado
    | otherwise = atual - 1
    where
        resultado = atual * atual

menor_raiz :: Int -> Int 
menor_raiz procurado = _menor_raiz_aux 1 procurado

main = do
    print $ menor_raiz 16
    print $ menor_raiz 17
    print $ menor_raiz 64
    print $ menor_raiz 10