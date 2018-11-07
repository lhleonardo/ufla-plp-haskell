qtd_elementos :: [a] -> Int
qtd_elementos [] = 0
qtd_elementos (cabeca:calda) = 1 + qtd_elementos calda

soma_elementos :: [Float] -> Float
soma_elementos [] = 0
soma_elementos lista = sum [1 | _ <- lista]

media_elementos :: [Float] -> Float
media_elementos [] = 0
media_elementos lista = x / y
    where 
        x = soma_elementos lista
        y = fromIntegral (qtd_elementos lista)

maiores_que_a_media :: [Float] -> [Float]
maiores_que_a_media lista = _maiores_que_a_media lista (media_elementos lista)


_maiores_que_a_media :: [Float] -> Float -> [Float]
_maiores_que_a_media [] _ = []
_maiores_que_a_media (h:t) media
    | h >= media = h : (_maiores_que_a_media t media)
    | otherwise = _maiores_que_a_media t media
    

main = do
    print $ media_elementos [1, 2, 3, 4, 5]
    print $ maiores_que_a_media [1, 2, 3, 4, 5]