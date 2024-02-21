{- 
Input and Output 


-}

main = do --more functions in main
    putStrLn "Your name? "
    name <- getLine
    putStrLn ( "You are " ++ name )