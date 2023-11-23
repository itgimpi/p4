/*
Input, Output

Terms, Chars.

Keyboard, Screen; File;

Outputting Terms

write/1 - Outputting Terms
nl/0 - new line
writeln/1
writeq/1 -  Outputting Terms + Quotes

*/

ispis :-
    write(22),nl,
    write('rasha is besednik'),nl,
    write([1,2,3]),nl,
    write([a,[12,[pera,mika]]]),nl,
    write(pred1(arg1, arg2)),nl,
    nl.

ispis2 :-
    writeq('vanja likes goats'), nl,
    writeq(man), nl,
    writeq('man'), nl.

/*

Inputting Terms

read/1, single arg., must be VAR, X

Eval: X <- Input Stream
Term must be followed by dot(.)

'a string of chars'.

If the var. is already bound?
must be randjel

*/

unos :-
    read(X),
    write(X), nl.

unos2 :-
    X=randjel,read(X).

/* 

Chars Out



put/1 <- from 0 to 255

9 tab
10 out of record
32 space
33! 34" 35# 36$ 37% 38& 39' 40( 41) 42*
64@

48-57 cifre od 0 do 9
65-90 slova A-Z
97-122 a-z slova
126~
*/

znakpi :- 
    put(227),nl.


/*

Chars - In

get0/1 - reads from in. str.
arg Var is unified with ASCII

?- get0(X).

a

X = 97
yes

*/

unoznak :-
    get0(X),
    put(X).

/* 
get (white spaces free) je slican sa get0 (white spaces),


*/