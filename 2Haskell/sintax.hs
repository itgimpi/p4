{- 
Syntax in Functions

Pattern Matching
-}



lucky :: Int -> String --pogodi broj
lucky 7 = "lucky number!" -- bitan je redosled, prvo 7, posle ide x - ostalo
lucky x = "guess again..."




ocena :: Int -> String
ocena 1 = "jen"
ocena 2 = "dva"
ocena 3 = "tri"
ocena 4 = "tri+1"
ocena 5 = "pet"
ocena x = "mora da bude od 1 do 5" --mora da bude na kraju (else)









fact :: Integer -> Integer
fact 0 = 1 --BC
fact n = n * fact(n-1) --Rec

addVector :: (Int, Int)->(Int, Int)->(Int, Int)
addVector a b = ( fst a + fst b, snd a + snd b)

addVector' :: (Int, Int)->(Int, Int)->(Int, Int)
addVector' (x1,y1) (x2,y2) = (x1+x2, y1+y2)

head' :: [a] -> a
head' [] = error "Prazna lista!"
head'(x:_)=x

length' :: [a]->Int
length' [] = 0
length' (_:xs) = 1 + length' xs