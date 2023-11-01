ispis( [] ) .
ispis( [G|R] ) :- write(G), nl, ispis(R).

ispis2([ ]) :- writeln('empty list').
ispis2( [ H ] ) :- write(H), write('.').
ispis2( [H|T] ) :-
    write(H),
    write(', '),
    ispis2(T).