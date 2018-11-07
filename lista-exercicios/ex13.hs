type Nome = String 
type Curso = String 
type Periodo = Int 
type Nota = Float 
type Aluno = (Nome, Curso, Periodo, Nota) 
type Disciplina = [Aluno] 

alunos :: Int -> Aluno 
alunos matricula
    | matricula == 1 = ("Rodrigo", "S.Inf.", 3, 6.0) 
    | matricula == 2 = ("Joao", "Eng.Comp.", 5, 5.0) 
    | matricula == 3 = ("Lucas", "C.Comp.", 8, 3.5) 
    | matricula == 4 = ("Ana", "C.Comp.", 5, 8.0) 
    | matricula == 5 = ("Maria", "C.Comp.", 7, 9.5) 
    | matricula == 6 = ("Paulo", "C.Comp", 6, 6.0) 
    | matricula == 7 = ("Jose", "S.Inf.", 8, 7.0) 
    | matricula == 8 = ("Eduarda", "C.Comp.", 4, 1.0) 
    | matricula == 9 = ("Carla", "Eng.Comp.", 6, 6.5) 
    | matricula == 10 = ("Luiz", "C.Comp.", 7, 5.7)

extrair_nota :: Aluno -> Nota
extrair_nota (_, _, _, n) = n

contar_reprovados :: [Aluno] -> Int
contar_reprovados [] = 0
contar_reprovados (aluno:alunos)
    | (extrair_nota aluno) < 6.0 = 1 + contar_reprovados alunos
    | otherwise = contar_reprovados alunos

menor_nota :: Int -> Aluno
menor_nota numero = _menor_nota [alunos x | x <- [1..numero]]

_menor_nota :: [Aluno] -> Aluno
_menor_nota [x] = x
_menor_nota (aluno: outros)
    | (extrair_nota aluno) < extrair_nota (_menor_nota outros) = aluno
    | otherwise = _menor_nota outros

main = do
    print $ contar_reprovados [ alunos x | x <- [1..10]]
    print $ menor_nota [ alunos x | x <- [1..10]]