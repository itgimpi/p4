--haskell> :load prvi.hs

duplo x = x + x

duplo2 x y = 2*x + 2*y

duplo3 x y = duplo x + duplo y

duplo4 x = if x > 100
    then x
    else x * 2

-- Intro to Lists

l1 = [1,2]
l2 = [3,4,5]

l3 = l1 ++ l2 --Concatenation

lista = [1,2,3,4,5,6,7,8,9]

--index
l4 = lista !! 5 -- peti el. c-ovski
l5 = [9]

h = head lista
t = tail lista
l = last lista
i = init lista

duz = length lista
praz = null lista
nao = reverse lista
lis1 = take 1 lista
lis2 = take 5 lista
lis3 = drop 5 lista
lis4 = drop 1 lista

maks = maximum lista
mini = minimum lista

su = sum lista
pr = product lista



