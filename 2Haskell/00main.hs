stringToInt::String->Int
stringToInt s = read s

{- Program koji sabira 2 cela broja

   

main = do
    a <- getLine --a je string
    let a2 = stringToInt a --a2 je broj
    putStrLn (show(a2)) --show za ispis



main = do
    a <- getLine
    putStrLn (show(stringToInt a))



main = do
    aa <- getLine
    bb <- getLine
    let a = stringToInt aa
    let b = stringToInt bb
    let c = a + b
    putStrLn (show(c))

-}

main = do
    aa <- getLine
    bb <- getLine
    let a = stringToInt aa
        b = stringToInt bb
        c = a + b
    putStrLn (show(c))