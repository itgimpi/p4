/*
Faktorijel
Query: fkt1(5,1,F).
3 promenljive
*/

fkt1(0,F,F).
fkt1(N, A, F) :-
    N > 0,
    A1 is N * A,
    N1 is N - 1,
    fkt1(N1, A1, F).

/*
Faktorijel
Query: fkt2(5,F).
2 promenljive
?- fkt2(5,F).
*/

fkt2(0, 1).
fkt2(N, F) :-
    N>0,
    N1 is N - 1,
    fkt2(N1, F1),
    F is F1 * N.
   

