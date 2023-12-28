/* BProlog Constraints */

primer1(Vars) :-
    Vars = [X], /* promenljiva */
    X :: 1..10, /* domen */
    labeling(Vars).

primer2(Vars) :-
    Vars = [X, Y], /* promenljive */
    X :: 1..3, /* domeni */
    Y :: 3..5,
    labeling(Vars).

primer11(Vars) :-
    Vars = [X],  /* promenljiva */
    X :: 1..10,  /* domen */
    X + 1 #= 10, /* ogranicenje */
    labeling(Vars).

primer12(Vars) :-
    Vars = [X],  /* promenljiva */
    X :: 1..10,  /* domen */
    X * X #= 25, /* ogranicenje */
    labeling(Vars).

primer13(Vars) :-
    Vars = [X],  /* promenljiva */
    X :: 1..10,  /* domen */
    X * X #= 625, /* ogranicenje */
    labeling(Vars).

primer21(Vars) :-
    Vars = [X, Y], /* promenljive */
    X in 1..10, /* domeni */
    Y in 1..10, /* in umesto :: */
    X + Y #= 15,  /* ogranicenje */
    labeling(Vars).

/*
        T W O 
      + T W O
      -------
      F O U R

*/

four(Vars) :-
    Vars = [T, W, O, F, U, R],
    Vars :: 0..9,
    T #\= 0, F #\= 0, 
    alldifferent(Vars),
    100*T+10*W+O + 100*T+10*W+O #=
    1000*F+100*O+10*U+R,

    labeling(Vars),
    write(' '), write(T), write(W), writeln(O),
    write('+'), write(T), write(W), writeln(O),
    writeln('----'),
    write(F), write(O), write(U), writeln(R).

logika1(Vars) :-
    Vars = [P,Q],  /* log. promenljive */
    Vars :: 0..1,  /* domen */
    P #\/ Q, /* ogranicenje */
    labeling(Vars).

logika2(Vars) :-
    Vars = [P,Q],  /* log. promenljive */
    Vars :: 0..1,  /* domen */
    P #/\ Q, /* ogranicenje */
    labeling(Vars).

/* ostrvo 1

a, b, a: bar jedan od nas laze

#\/ #/\ #<=> #=> #\

*/ 

ostrvo1(Vars) :-
    Vars = [A, B],  /* log. promenljive */
    Vars :: 0..1,  /* domen */
    A #<=> (#\A #\/ #\B), /* ogranicenje */
    labeling(Vars).


/* ostrvo 2

a, b, a: obojica lazemo

#\/ #/\ #<=> #=> #\

*/

ostrvo2(Vars) :-
    Vars = [A, B],  /* log. promenljive */
    Vars :: 0..1,  /* domen */
    A #<=> (#\A #/\ #\B), /* ogranicenje */
    labeling(Vars).

/* ostrvo 3

a, b, a: ja istinu, b laz

#\/ #/\ #<=> #=> #\

*/

ostrvo3(Vars) :-
    Vars = [A, B],  /* log. promenljive */
    Vars :: 0..1,  /* domen */
    A #<=> (A #/\ #\B), /* ogranicenje */
    labeling(Vars).

/* ostrvo 4

a, b, a: bar 1 istinu

#\/ #/\ #<=> #=> #\

*/

ostrvo4(Vars) :-
    Vars = [A, B],  /* log. promenljive */
    Vars :: 0..1,  /* domen */
    A #<=> (A #\/ B), /* ogranicenje */
    labeling(Vars).

/* ostrvo 5

p1, p2, p2: i'm positive, p1 is neg.

#\/ #/\ #<=> #=> #\

*/

ostrvo5(Vars) :-
    Vars = [P1, P2],  /* log. promenljive */
    Vars :: 0..1,  /* domen */
    P2 #<=> (#\P1 #/\ P2), /* ogranicenje */
    labeling(Vars).

/* ostrvo 6

a, b, c. 
a: b is knight
b: a and c are knaves

#\/ #/\ #<=> #=> #\

*/

ostrvo6(Vars) :-
    Vars = [A, B, C],  /* log. promenljive */
    Vars :: 0..1,  /* domen */
    A #<=> (B), /* ogranicenje */
    B #<=> (#\A #/\ #\C), /* ogranicenje */
    labeling(Vars).

/* ostrvo 7

a, b, c. 
a: if i am knight b is knave
b: i am knight c is knave

#\/ #/\ #<=> #=> #\

*/

ostrvo7(Vars) :-
    Vars = [A, B, C],  /* log. promenljive */
    Vars :: 0..1,  /* domen */
    A #<=> (A #=> #\B), /* ogranicenje */
    B #<=> (B #/\ #\C), /* ogranicenje */
    labeling(Vars).

/* ostrvo 8

a, b, c. 
a: ako on laze, ja pricam istinu
b: neam pojma

#\/ #/\ #<=> #=> #\

*/

ostrvo8(Vars) :-
    Vars = [A, B],  /* log. promenljive */
    Vars :: 0..1,  /* domen */
    A #<=> (#\B #=> A), /* ogranicenje */
    labeling(Vars).

/* ostrvo 9

a, b, c. 
a: ja istinu, za njih ne znam
b: ako a istinu, ja lazem
c: isti sam ko a

#\/ #/\ #<=> #=> #\

*/

ostrvo9(Vars) :-
    Vars = [A, B, C],  /* log. promenljive */
    Vars :: 0..1,  /* domen */
    A #<=> (A), /* ogranicenje */
    B #<=> (A #=> #\ B),
    C #<=> (C #<=> A),
    labeling(Vars).

/* ostrvo 10

a, b, c. 
a: dobar dan
b: taj sto je reko dobar dan je lazov
c: ma svi su oni lazovi

#\/ #/\ #<=> #=> #\

*/

ostrvo10(Vars) :-
    Vars = [A, B, C],  /* log. promenljive */
    Vars :: 0..1,  /* domen */
    /* ogranicenje */
    B #<=> (#\ A),
    C #<=> (#\ A #/\ #\ B),
    labeling(Vars).

/* ostrvo 11

a, b, c. 
a: ako ja lazem, b ne laze
b: isti sam ko c
c: a laze za razliku od mene

#\/ #/\ #<=> #=> #\

*/

ostrvo11(Vars) :-
    Vars = [A, B, C],  /* log. promenljive */
    Vars :: 0..1,  /* domen */
    /* ogranicenje */
    A #<=> (#\A #=> B),
    B #<=> (B #<=> C),
    C #<=> (#\A #/\ C),
    labeling(Vars).

:-table fib/2.

go :-
    write('n = '), read(N), nl,
    cputime(Pocetak),
    fib(N, F),
    cputime(Kraj),
    writeln(F),
    Vreme is Kraj - Pocetak,
    write(Vreme), write(' ms').

fib(0, 1) :- !.
fib(1, 1) :- !.

fib(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, F1),
    fib(N2, F2),
    F is F1 + F2.