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
*/

m1 :- member(1, [1,2,3]).
m2 :- member(a, [a,b,c]).
m3 :- member(d, [a,b,c]).
m4 :- member(x, []).
m5 :- member([1,2,3], [1,a,[1,2,3],p(a,b)]).
m6 :- member(pred1(a,b,c), [1, 2, pred1(a,b,c)]).

/* 1st arg. is unbound?
put it into Query:

member(X, [a,b,c,d,e]).

| ?- member(X, [a,b,c,d,e]).
X = a ?;
X = b ?;
X = c ?;
X = d ?;
X = e ?;
no

*/

danemo(Odg) :- repeat,
    write('yes/no/maybe '), read(Odg),
    member(Odg, [yes, no, maybe]),
    write('odg. je '), write(Odg), nl, !.

/* da li je x isti sa GLAVOM 
sadrzi(X, [X|_]).    */
sadrzi(X, [X|_]) :- !.
/* za [1,2,3,4,5] poziva [2,3,4,5],
[3,4,5], [4,5], [5] i [] */
sadrzi(X, [_|R]) :- sadrzi(X, R).

/* ILI je Glava ILI je u Repu */
sadrzi2(X, [G|R]) :- G == X; sadrzi2(X, R).

/* 

Built-in Predicates 

       list, var (unbound, bound)
length(arg1, arg2) 

?- length([a,b,c], D).
D = 3
yes

?- length([[1], [a,b], [pr1(z,x),cd]],D).
D = 3
yes

length([], D).     
D = 0
yes

?- length([a,b,c], 3).

yes
?- length([a,b,c], 4).
no

?- D is 3, length([a,b,c], D).
D = 3
yes

*/

