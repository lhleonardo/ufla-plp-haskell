primeiroLista :: [a] -> a
primeiroLista (cabeca:_) = cabeca

caldaLista :: [a] -> [a]
caldaLista (_:calda) = calda

ultimoLista:: [a] -> a
ultimoLista [x] = x
ultimoLista (_:calda) = ultimoLista calda

imprimeLista:: (Show a) => [a] -> String
imprimeLista [] = ""
imprimeLista (cabeca:calda) = " " ++ (show cabeca) ++ (imprimeLista calda) 

main = do
    print "Separacao de listas"
    print "Primeiro elemento em [10, 11, 12, 13]"
    print $ primeiroLista [10, 11, 12, 13]
    print "Ultimo elemento em [10, 11, 12, 13]"
    print $ ultimoLista [10, 11, 12, 13]
    print "Calda em [10, 11, 12, 13] sem o primeiro"
    print $ caldaLista [10, 11, 12, 13]
    print "Impressão da lista manualmente"
    print $ imprimeLista [10, 11, 12, 13]