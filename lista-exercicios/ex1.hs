calcularRaizes :: Float -> Float -> Float -> (Float, Float)
calcularRaizes a b c 
    | delta >= 0 = (menor, maior)
    | otherwise = (-10000, -1000000)
    where 
        maior = ((-b) + (sqrt delta)) / (2 * a)
        menor = ((-b) - (sqrt delta)) / (2 * a)
        delta = b ^ 2 - 4 * a * c


main = do
    print "Raizes entre a=1 b=2 c=1"
    print $ calcularRaizes 1 2 2