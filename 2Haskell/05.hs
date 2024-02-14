{- 
Tuples and Pairs
Torke i parovi
-}

t1 = (1,2)
t2 = (1,2,3)
t3 = (4, '5', "six")

--matrix in haskell
l1 = [[1,2],[3,4],[5,6]]

l2 = [(1,2),(3,4),(5,6)]
--l3 = [(1,2),(3,4),(5,6,7)] u listu samo torke iste duzine!

--Pairs

p1 = (1,2)

{- 
p1(1,2)
*Main> fst p1
1
*Main> snd p1
2-

*Main> fst (314,3.14)
314
*Main> snd (314,3.14)
3.14

--rajsfeslus f-ja

zip [1,2,3,4,5][1,2,3,4,5]
[(1,1),(2,2),(3,3),(4,4),(5,5)]

*Main> zip [1,2]["jen","dva"]
[(1,"jen"),(2,"dva")]

*Main> zip [1..10]["jen","dva"]
[(1,"jen"),(2,"dva")]

*Main> zip [1..]["jen","dva"]  
[(1,"jen"),(2,"dva")]


-}

--varijacije sa ponavllanjem od 10 el. 3. klase
pita = [ (a, b, c) | a <- [1..10], b <- [1..10], c <- [1..10] ]




--pravougli trouglovi u opsegu stranica od 1 do 10
pita' = [ (a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10], a*a + b*b == c*c ]
pita'' = [ (a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10], a^2 + b^2 == c^2 ]

--pravougli trouglovi u opsegu stranica od 1 do 10, obima 24
pita''' = [ (a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10], a^2 + b^2 == c^2, a+b+c==24 ]