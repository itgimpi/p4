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


