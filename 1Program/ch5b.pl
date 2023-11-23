/*
Input, Output

Terms, Chars

Outputting Terms

Keyboard / Screen, File.

write/1 <- single arg.,
nl/0 
writeln/1
writeq/1 <- quotes

*/

ispis :-
    write(22), nl.

ispis2 :-
    writeln(22).

ispis3 :-
    writeln('a string of chars'),
    writeln([1,2,3,4,5]),
    writeln([1,2,[x,z,y, [pon,uto]]]),
    writeln(pred1(a,b,c)).

ispis4 :-
    writeq('a string of chars'),nl,
    writeq(man),nl,
    writeq('man'),nl.

/*

Inputting Terms

read/1 <- single arg, must be var.

eval: X <- input stream

Term must be terminated by dot(.)

22.
qwerty.
pred1(a,b,c).
[1,2,[x,z,y, [pon,uto]]].
'a string of chars'.

If the var X is already bound

*/

unos :-
    read(X),
    writeln(X).

vezana :-
    X=randjel,
    read(X).