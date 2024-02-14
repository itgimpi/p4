{- 
Input and Output 
Compilation - as C

ghc 04io.hs  
[1 of 1] Compiling Main             ( 04io.hs, 04io.o )
Linking 04io.exe ...
PS C:\Users\IT odeljenje 1\Desktop\Repo\p4\2Haskell> .\04io.exe
Hello, world!

ghc -o hello 04io.hs   
Linking hello.exe ...
PS C:\Users\IT odeljenje 1\Desktop\Repo\p4\2Haskell> .\hello.exe
Hello, world!

ghc --make .\04io.hs 
[1 of 1] Compiling Main             ( 04io.hs, 04io.o )
Linking 04io.exe ...

Linux

ghc -o hello 04io.hs   
Linking hello ...
PS C:\Users\IT odeljenje 1\Desktop\Repo\p4\2Haskell> ./hello.exe
Hello, world!

ghc -o a.out 04io.hs   
Linking a.out ...
PS C:\Users\IT odeljenje 1\Desktop\Repo\p4\2Haskell> ./hello.exe
Hello, world!

-}

main = putStrLn "Hello, world!" --single function