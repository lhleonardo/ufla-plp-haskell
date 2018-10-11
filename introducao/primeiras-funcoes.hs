soma :: Integer -> Integer -> Integer -> Integer
soma a b c = a + b + c

-- recebe dois inteiros e faz a potencia do primeiro pelo segundo
potencia :: Int -> Int -> Int
potencia base 0 = 1
potencia base exp = base * potencia base (exp - 1)

fatorial :: Int -> Int
fatorial 0 = 1
fatorial numero = numero * fatorial (numero - 1)

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci numero = fibonacci (numero - 1) + fibonacci (numero - 2)

main = do
    print "Soma de dois numeros"
    -- chama a funcao soma passando os dois números
    print $ soma 5  10 10 -- notação prefixa
    
    print "5 elevado a 4"
    print $ potencia 5 0
    
    print "5 fatorial"
    print $ fatorial 5
    
    print "Fibonacci de 14.000"
    print $ fibonacci 40
