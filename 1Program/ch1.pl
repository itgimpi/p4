/*
Prolog Program
Terms

Types of Terms:

1. Numbers - Brojevi
2. Atoms - Atom
3. Variables - Promenljive
4. Compound Terms - 
5. Lists - Liste, nizovi

Numbers - Integer
*/

go :- 
    Broj is 5,
    writeln(Broj).

go2 :- 
    Broj2 is 2'101,
    Broj3 is 16'ABC,
    Broj4 is 3'12,
    Broj5 is 0'a,
    writeln(Broj2),
    writeln(Broj3),
    writeln(Broj4),
    writeln(Broj5).

/*Numbers - Float*/

go3 :- 
    Pi is 3.14,
    writeln(Pi).

/* ***Atoms - without num. val. 
1. seq. of one / more letters, digits, beginning with lower case letter

laki, laki_topalovic, laki123, l123azat, laKI1 .......OK

laki topalovic, Laki, 1aki .......JOK

2. seq. of chars in single quotes

write('neki tekst')

3. seq. of one / more spec. chars

***Var's
Begins with a Capital / underscore _


*** Lists
L = [1, 2, 3, 4, 5]
L je [H|T] ili [G|R] ili [Glava|Rep]

*/

likes(iv5, prolog). 

/*
BC is empty list */

ispis([]).
ispis([G|R]) :- write(G), nl, ispis(R).

/*
1, 2, 3, 4, 5. */

ispis2([]) .
ispis2([G]) :- write(G), write('.').
ispis2([G|R]) :- write(G), write(', '), ispis2(R).

/*
Checking Term Types
atom
atomic - atom or number 

number
float, real
integer

var
nonvar
*/

idi :-
    atom(iv5),
    atom(iv4),
    atomic(iv3),
    atomic(3),
    number(3.14),
    float(3.14),
    var(X),
    var(Osoba), 
    nonvar(osoba).

/*
JOK
atom(5)
atomic(IV5)
integer(3.14)
float(3)
var(osoba)
*/