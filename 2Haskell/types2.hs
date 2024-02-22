{-show type - values that can be represented as STRING

Prelude> show 123
"123"
Prelude> show 3.14
"3.14"
Prelude> show True
"True"

-read - opposite of show
 
Prelude> read "3" -- ne zna na kakvo 3 se misli!
*** Exception: Prelude.read: no parse
Prelude> read "False"
*** Exception: Prelude.read: no parse
Prelude> read "[1,2]" 
*** Exception: Prelude.read: no parse

Prelude> read "3"+1  --1st way
4
Prelude> read "False" || True
True

Prelude> read "3"::Int --read
3
Prelude> read "3"::Float
3.0
Prelude> read "False"::Bool
False
Prelude> read "[1,2]"::[Int]
[1,2]

-}