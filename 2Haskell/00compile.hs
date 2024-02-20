{- 
Input and Output 
Compilation - as C / C++ 
To compile program in C type: gcc prog.c. It creates executive file a.exe (win) or a.out (Linux).

To compile program in Haskell, type: gcc prog.c. It creates executive file prog.exe (win) or a.out (Linux).
ghc 04io.hs  
Messages:
[1 of 1] Compiling Main             ( 04io.hs, 04io.o )
Linking 04io.exe ...
PS C:\Users\IT odeljenje 1\Desktop\Repo\p4\2Haskell> .\prog.exe
Hello, world!

To compile program in Haskell with desired name, type:
ghc -o hello 04io.hs   
Linking hello.exe ...
PS C:\Users\IT odeljenje 1\Desktop\Repo\p4\2Haskell> .\hello.exe
Hello, world!

To compile program in Haskell using make, type:
ghc --make .\04io.hs 
[1 of 1] Compiling Main             ( 04io.hs, 04io.o )
Linking 04io.exe ...

Linux:

ghc -o hello 04io.hs   
Linking hello ...
PS C:\Users\IT odeljenje 1\Desktop\Repo\p4\2Haskell> ./hello
Hello, world!

ghc -o a.out 04io.hs   
Linking a.out ...
PS C:\Users\IT odeljenje 1\Desktop\Repo\p4\2Haskell> ./a.out
Hello, world!



The first program to compile:

main = putStrLn "Hello, world!" --single function

The second program, with input and output:

main = do --more functions in main
    putStrLn "Your name? "
    name <- getLine
    putStrLn ( "You are " ++ name )

main = do
    foo <- putStrLn "Hello, what's your name?"
    name <- getLine
    putStrLn ("Hey " ++ name ++ ", you rock!")

main = do
    let a = "hell"
        b = "yeah"
    putStrLn $ a ++ " " ++ b

    
-}