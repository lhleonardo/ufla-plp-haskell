remove_espacos :: String -> String
remove_espacos [] = []
remove_espacos (h:t)
    | h == ' ' = ' ' : encontrar_valido t
    | otherwise = h : remove_espacos t

encontrar_valido :: String -> String
encontrar_valido (h:t) 
    | h == ' ' = encontrar_valido t
    | otherwise = h : remove_espacos t

main = do
    print $ remove_espacos "      Leonardo       Henrique  de  Braz"
