{-                   Types in Haskell
Prelude> :type 1
1 :: Num p => p
Prelude> :t 1
1 :: Num p => p
Prelude> :t 1.2
1.2 :: Fractional p => p
Prelude> :t 'a'
'a' :: Char
Prelude> :t "abc"
"abc" :: [Char]




saberi x y = x + y

*Main> :t saberi 
saberi :: Num a => a -> a -> a 
--ima 2 parametra (istog tipa) i vred. je tog tipa (broj)
-}


saberi :: Num a => a -> a -> a --opisuje tip, radi samo sa brojevima
saberi x y = x + y

saberiInt :: Int -> Int -> Int --radi samo sa Int
saberiInt x y = x + y

samoMalaSlova :: [Char] -> [Char]
samoMalaSlova str = [ c | c <- str, c `elem` ['a'..'z'] ]

{-
*Main> :t head
head :: [a] -> a --a je neki tip, polymor...

*Main> :t fst
fst :: (a, b) -> a

Common Haskell Types

Int, bounded, -min...+max, kao C

Integer, unbounded, skoro -8...+8, kao Python

Float, C

Double, C

Bool, Python

Char, C/C++

-}

fct :: Integer -> Integer
fct n = product [1..n]

{-
*Main> 1+2  
3
*Main> (+) 1 2
3
*Main> :t (+)
(+) :: Num a => a -> a -> a

*Main> :t (==)
(==) :: Eq a => a -> a -> Bool


-}