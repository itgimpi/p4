/* Ch6 Loops

lje lje lje lje lje
5 lje
petlje

c/c++ imaju for, while
Prolog ima 0 predikata za 5lje.

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
