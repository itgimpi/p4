/* Fibonacci, by memo */

:- table fib/2.

go :-
    write('n = '), read(N), nl,
    cputime(Pocetak),
    fib(N, F),
    cputime(Kraj),
    writeln(F),
    Vreme is Kraj - Pocetak,
    write(Vreme), writeln('ms').

/* BC */
fib(0, 1) :- !.
fib(1, 1) :- !.

fib(N, F) :-
    N > 1, /* 0 i 1 su BC */
    N1 is N-1,
    N2 is N-2,
    fib(N1, F1),
    fib(N2, F2),
    F is F1 + F2.
