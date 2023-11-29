/* 
Loops - lje lje lje lje lje - 5 lje - pet lje

prva petlja ispisuje od n do -inf */

petlja(N) :-
    write('vrednost je '),
    write(N), nl,
    NN is N - 1,
    petlja(NN).

/* fali BC, ispis je od n do 1 */

petlja2(0).
petlja2(N) :-
    write('vrednost je '),
    write(N), nl,
    NN is N - 1,
    petlja2(NN).

loop(0).
loop(N) :-
    write('vrednost je '),
    write(N), nl,
    NN is N - 1,
    loop(NN).

/* ispis(10, 20) */

ispis(Last, Last) :-
    write(Last), nl,
    write('The End'), nl.


ispis(First, Last) :-
    First =\= Last,
    write(First), nl,
    Next is First + 1,
    ispis(Next, Last).

pregausa(1, 1).
pregausa(N, Z) :-
    N > 1,
    NN is N - 1,
    pregausa(NN, ZZ),
    Z is ZZ + N.

/*gaus()*/