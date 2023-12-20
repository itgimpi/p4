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