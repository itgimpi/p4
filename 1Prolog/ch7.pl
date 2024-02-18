/* Ch 7 

Stop BCKTRCK! with CUT!





Intro
BCKTRCK je u osnovi prologa



primeri bez ! nisu bas kako treba...



*/




larger(A, B, A) :- A > B.
larger(A, B, B).




/* za 8,10 samo je drugi
za 10,8 ispunjen je prvi, ali 
nista ne fali nidrugom... */







larger2(A, B, A) :- A > B.
larger2(_, B, B).










larger3(A, B, A) :- A > B.
larger3(A, B, B) :- A =< B.



larger5(A, B, B) :- A =< B.
larger5(A, B, A) :- A > B.



/* potrosi mem. */
sumto(1,1).
sumto(N, S) :-
    NN is N-1,
    sumto(NN, SS),
    S is SS + N. 




sumto2(1,1).
sumto2(N, S) :-
    N > 1,
    NN is N-1,
    sumto2(NN, SS),
    S is SS + N.

/* bilo bi dobro
da se zaustavi BCKTRCK! 

za 10,8 izvrsi se prvi i STOP!
za 8,10 drugi
*/

larger4(A, B, A) :- A > B, !.
larger4(_, B, B).

/* sumto with cut */

sumto3(1,1) :- !.
sumto3(N, S) :-
    NN is N-1,
    sumto3(NN, SS),
    S is SS + N.






classify(0, zero).
classify(N, negative) :- N < 0.
classify(N, positive).

classify2(0, zero) :- !.
classify2(N, negative) :- N < 0, !.
classify2(N, positive).

classify3(0, zero) :- !.
classify3(N, negative) :- N < 0, !.
classify3(_, positive).