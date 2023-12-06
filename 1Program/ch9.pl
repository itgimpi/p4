/* Ch 9

List

Niz vrednosti

Liste mogu da budu homogene a i ne moraju

Liste mogu da sadrze i druge liste

Postoji i prazna lista [].

*/

/*

Notations(1/2): standard 

*/

l0 :- L0 = [], write(L0).

l1 :- L1 = [1, 2, 3], write(L1).
l2 :- L2 = [a, b, c], write(L2).
l3 :- L3 = [red, green, blue], write(L3).

l4 :- L4 = [1, a, red, pred(ar1,ar2)], write(L4).
l5 :- L5 = [1, 2, red, [12, 13, [as, df, gh]]], write(L5).



l6 :- X = alpha, Y = 123, Z = [alpha, beta],
    writeln([X, Y, Z]).


/*

Notations(2/2): cons notation
     cons means  |


List ~ [ elements | list ]

*/

c1 :- C1 = [1 | [2, 3]], writeln(C1).
c2 :- C2 = [one | [two, three]], writeln(C2).

c3 :- C3 = [alpha, beta | [gamma]], writeln(C3).
c4 :- C4 = [ 1, 2, 3 | [] ], writeln(C4).

c5 :- 
    write('Type a list '),
    read(L),
    LL = [first | L],
    writeln('New List Is '),
    writeln(LL).

c6 :- 
    write('Type a list '),
    read(L),
    LL = [first, L],
    writeln('New List Is '),
    writeln(LL).

writelist([]).
writelist([H|T]) :-
    writeln(H), writelist(T).
