/* 
Loops - lje lje lje lje lje - 5 lje - pet lje

prva petlja ispisuje od n do -inf */

petlja(N) :-
    write('vrednost je '),
    write(N), nl,
    NN is N - 1,
    petlja(NN).

/* fali BC, ispis je od n do 1 

Fixed Number of Times

*/

petlja2(0).
petlja2(N) :-
    write('vrednost je '),
    write(N), nl,
    NN is N - 1,
    petlja2(NN).

loopp(0).
loopp(N) :-
    write('vrednost je '),
    write(N), nl,
    NN is N - 1,
    loopp(NN).

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

/*

Looping Until a Condition is Satisfied

Recursion

unose se reci...

sve dok rec ne bude end.

ver. 1

*/

go :- loop(start).

loop(end).

loop(X) :-
    X \= end,
    write('Type end to end '),
    read(Word),
    write('Your Input Was '),
    write(Word), nl,
    loop(Word).

/* version 2,

Disjunctive Goal */

loop :-
    write('Type...'),
    read(Word),
    write('In. was... '),
    write(Word), nl,
    (Word = end; loop).

/*
da / ne pitalica,
zavrsavaju */

dane(Odg) :-
    write('Odgovori na pitanje '),nl,
    dane2(Odg).

dane2(Odg) :-
    write('Odgovori sa da ili ne '),
    read(O),
    (valid(O),Odg=O,write('Odgovor je '),write(O),nl);
    (dane2(Odg)).
valid(da). valid(ne).

/*

Using Repeat Predicate */

dane3(Odg) :-
    write('Odgovori.. '),
    nl,
    repeat,
    write('da / ne'),
    read(Odg),

    validan(Odg),
    write('Odg... '),write(Odg),nl.

validan(da). 
validan(ne).