/* Ch6 Loops

lje lje lje lje lje
5 lje
petlje

c/c++ imaju for, while
Prolog ima 0 predikata za 5lje.

Fiksiran broj puta

primer ispisuje brojeve
od N unazad

primer ne valja, jer ide do -inf
 */

petlja(N) :-
    write('vrednost je '),
    write(N), nl,
    N1 is N - 1,
    petlja(N1).

/* dodaj BC */

petlja2(0).
petlja2(N) :-
    write('vrednost je '),
    write(N), nl,
    N1 is N - 1,
    petlja2(N1).

/* ispis brojeva od donje granice
do gornje granice */


ispis(GG, GG) :-
    write(GG), nl,
    write('yes'), nl.

ispis(DG, GG) :-
    DG =\= GG,
    write(DG),nl,
    NDG is DG+1,
    ispis(NDG, GG).

pregaus(0, Z, Z).
pregaus(N, Z, R) :-
    Z1 is Z + N,
    N1 is N-1,
    pregaus(N1, Z1, R).

/*
Looping Until a Condition Is Satisfied

Recursion

Korisnik unosi reci,
unos se vrsi 
sve do bukvalno end.

version 1

*/

go :- loop(start).

loop(end).

loop(X) :-
    X \= end,
    write('Type end to end: '),
    read(Word),
    write('Input was '),
    write(Word), nl,
    loop(Word).

/*
version 2, Disjuntive
*/

loop :-
    write('Type end...'),
    read(Word),
    write('In was... '),
    write(Word),nl,
    (Word = end; loop).

/*
da/ne pitalica */

dane(Odg) :-
    write('Odgovori na pitanje '),nl,
    dane2(Odg).

dane2(Odg) :-
    write('Odgovori sa da ili ne'),
    read(O),
    ((valid(O), Odg = O, write('Odgovor je '),write(O), nl); 
    dane2(Odg)).

    valid(da). valid(ne).

/*
Using the repeat predicate */

dane3(Odg) :-
    write('Odgovori...'),
    nl,
    repeat,
    write('Odgovori ... da .. ne '),
    read(Odg),

    validan(Odg),
    write('Odgovor je '), 
    write(Odg), nl.

validan(da).
validan(ne).
