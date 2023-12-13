/* Ch 9 Lists

Niz vrednosti

Liste mogu da budu homogene a i ne moraju. Liste mogu da sadrze i druge liste.

Postoji i prazna lista [].


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





/* BIP

Built-in Predicates 

       term
member(arg1, arg2) - da li arg1 pripada arg2-u
             list

Queries:

?- member(1, [1,2,3]).
yes

?- member(a, [a,b,c]).

yes
| ?- member(x, []).
no
| ?- member(p1(a,b),[1,a,p1(a,b)]).

yes

Arg. 1 is Unbound Var. ?

?- member(E,[1,2,3,4,5]).
E = 1 ?;
E = 2 ?;
E = 3 ?;
E = 4 ?;
E = 5 ?;
no

*/

danemo(Odg) :- repeat,
    write('yes/no/maybe '), read(Odg),
    member(Odg, [yes, no, maybe]),
    write('odg. je '), write(Odg), nl, !.

pripada(E, [E|_]):- !.
pripada(E, [_|R]) :- pripada(E, R).

pripada2(E, [G|R]) :- G==E; pripada2(E,R).

/*
        list
length( arg1, arg2)
              var

Unbound Var.
?- length([1,2,3], D).
D = 3
yes
| ?- length([1,[1,2,3],[]], D).
D = 3
yes
| ?- length([], D).            
D = 0
yes

Unbound Var.

?- length([1,2,3], 3).

yes
| ?- length([1,2,3], 6).
no
| ?- N is 3, length([a,b,c],N).
N = 3
yes

*/

