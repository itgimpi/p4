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