/* BProlog Constraints */

primer1(Vars) :-
    Vars = [X], /* promenljiva */
    X :: 1..10, /* domen */
    labeling(Vars).

primer2(Vars) :-
    Vars = [X, Y], /* promenljive */
    X :: 2..4, /* domeni */
    Y :: 4..6,
    labeling(Vars).

primer11(Vars) :-
    Vars = [X], /* promenljiva */
    X :: 1..10, /* domen */
    X + 2 #= 8, /* ogranicenje */
    labeling(Vars).

primer12(Vars) :-
    Vars = [X], /* promenljiva */
    X :: 1..10, /* domen */
    X * X #= 8, /* ogranicenje */
    labeling(Vars).

primer13(Vars) :-
    Vars = [X], /* promenljiva */
    X :: 1..10, /* domen */
    X * X #= 9, /* ogranicenje */
    labeling(Vars).

primer21(Vars) :-
    Vars = [X, Y], /* promenljive */
    X in 1..10, /* domeni :: ili in */
    Y :: 1..10,
    X + Y #= 14, /* ogranicenje */
    labeling(Vars).

primer22(Vars) :- /* sistem 2 jed. u skupu Z */
    Vars = [X, Y], /* promenljive */
    X in -1000..1000, /* domeni :: ili in */
    Y :: -1000..1000,
    X + Y #= 14, /* ogranicenje1 */
    X - Y #= 632, /* ogranicenje2 */
    labeling(Vars).




/*

  TWO
 +TWO
-----
=FOUR

*/




four(Vars) :-
    Vars = [T, W, O, F, U, R],
    Vars :: 0..9,
    T #\= 0, F #\= 0,
    alldifferent(Vars),
    (100 * T + 10 * W + O) * 2 #=
    1000 * F + 100 * O + 10 * U + R,
    labeling(Vars),
    write('  '), write(T), write(W), writeln(O),
    write(' +'), write(T), write(W), writeln(O),
    write('='), write(F), write(O), write(U), writeln(R).

logika1(Vars) :-
    Vars = [P, Q], /* promenljive */
    Vars :: 0..1, /* domeni :: ili in */
    P #\/ Q, /* ogranicenje */
    labeling(Vars).

logika2(Vars) :-
    Vars = [P, Q], /* promenljive */
    Vars :: 0..1, /* domeni :: ili in */
    P #/\ Q, /* ogranicenje */
    labeling(Vars).

/* logicki operatori za oganicenja:

#\/                 ILI
#/\                 I
#<=>                EQ
#=>                 IMPL
#\                  NOT

Ostrvo sa T i F
a, b
a: bar 1 od nas laze

*/

ostrvo1(Vars) :-
    Vars = [A, B], /* promenljive */
    Vars :: 0..1, /* domeni :: ili in */
    A #<=> ( #\A #\/ #\B ), /* ogranicenje */
    labeling(Vars).

/* Ostrvo sa T i F
a, b
a: obojica lazemo */

ostrvo2(Vars) :-
    Vars = [A, B], /* promenljive */
    Vars :: 0..1, /* domeni :: ili in */
    A #<=> ( #\A #/\ #\B ), /* ogranicenje */
    labeling(Vars).

/* Ostrvo sa T i F
a, b
a: bar 1 istinu */

ostrvo3(Vars) :-
    Vars = [A, B], /* promenljive */
    Vars :: 0..1, /* domeni :: ili in */
    A #<=> ( A #\/  B ), /* ogranicenje */
    labeling(Vars).

/* Ostrvo sa T i F
a, b
b: ja sam vitez, onaj drugi je lopov */

ostrvo4(Vars) :-
    Vars = [A, B], /* promenljive */
    Vars :: 0..1, /* domeni :: ili in */
    B #<=> ( B #/\ #\A ), /* ogranicenje */
    labeling(Vars).

/* Ostrvo sa T i F
a, b
b: realno, isti smo */

ostrvo5(Vars) :-
    Vars = [A, B], /* promenljive */
    Vars :: 0..1, /* domeni :: ili in */
    B #<=> ( B #<=> A ), /* ogranicenje */
    labeling(Vars).

/* Ostrvo sa T i F
a, b
a: NISMO ISTI! */

ostrvo6(Vars) :-
    Vars = [A, B], /* promenljive */
    Vars :: 0..1, /* domeni :: ili in */
    A #<=> #\( A #<=> B ), /* ogranicenje */
    labeling(Vars).

/* Ostrvo sa T i F
a, b
a: ja istinu, b laze */

ostrvo7(Vars) :-
    Vars = [A, B], /* promenljive */
    Vars :: 0..1, /* domeni :: ili in */
    A #<=> (A #/\ #\B), /* ogranicenje */
    labeling(Vars).

/* Ostrvo sa T i F
a, b
a: lzem za b nzm */

ostrvo8(Vars) :-
    Vars = [A, B], /* promenljive */
    Vars :: 0..1, /* domeni :: ili in */
    A #<=> #\A, /* ogranicenje */
    labeling(Vars).

/* Ostrvo sa T i F
a, b
a: ako on istinu, ja lzem */

ostrvo9(Vars) :-
    Vars = [A, B], /* promenljive */
    Vars :: 0..1, /* domeni :: ili in */
    A #<=> (B #=> #\A), /* ogranicenje */
    labeling(Vars).

/* Ostrvo sa T i F
a, b, c
a: ja ne lazem, za razliku od njih
c: svi smo lazovi */

ostrvo10(Vars) :-
    Vars = [A, B, C], /* promenljive */
    Vars :: 0..1, /* domeni :: ili in */
    A #<=> (A #/\ #\B #/\ #\C), /* ogranicenje */
    C #<=> (#\A #/\ #\B #/\ #\C),
    labeling(Vars).