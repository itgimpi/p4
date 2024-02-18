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

duzina([], 0).
duzina([_|R], D) :- duzina(R, D1), D is D1 + 1.

/*

reverse

reverse([1,2,3],L).
L = [3,2,1]
yes
| ?- reverse(L,[1,2,3]).
no
| ?- reverse([ [1,2], [a,b] ]).
***  Undefined procedure: reverse/1
| ?- reverse([ [1,2], [a,b] ], L).
L = [[a,b],[1,2]]
yes
| ?- reverse([1,2,3], [3,2,1]).   

yes

[1,2,3,4,5] -> [5,4,3,2]

*/

naopakrep(L, NR) :- 
    obezglavi(L, OL),
    reverse(OL, NR).

naopakrep2(L, NR) :- 
    reverse(L, NL),
    obezglavi(NL, OL),
    reverse(OL, NR).

obezglavi([_|R], R).

obrni(L,NL) :- obrt(L, [], NL).

obrt([],L,L):-!.
obrt([G|R], NL, L) :- obrt(R,[G|NL],L).


/*

        L1    L2    un. var.
append(arg1, arg2, arg3).

Concatenate

?- append([1,2,3],[4,5,6],R).
R = [1,2,3,4,5,6]
yes
| ?- append([],[1,2,3],R).     
R = [1,2,3]
yes
| ?- append([[a,b],c,d],[[q,w,e],r,t,y],R).
R = [[a,b],c,d,[q,w,e],r,t,y]
yes
| ?- append([1,2],[3,4],[1,2,3,4]).

yes

?- append(L1, L2, [1,2,3,4,5]).
L1 = []
L2 = [1,2,3,4,5] ?;
L1 = [1]
L2 = [2,3,4,5] ?;
L1 = [1,2]
L2 = [3,4,5] ?;
L1 = [1,2,3]
L2 = [4,5] ?;
L1 = [1,2,3,4]
L2 = [5] ?;
L1 = [1,2,3,4,5]
L2 = [] ?;
no

append(X, [Y|Z], [1,2,3,4,5]).
X = []
Y = 1
Z = [2,3,4,5] ?;
X = [1]
Y = 2
Z = [3,4,5] ?;
X = [1,2]
Y = 3
Z = [4,5] ?;
X = [1,2,3]
Y = 4
Z = [5] ?;
X = [1,2,3,4]
Y = 5
Z = [] ?;
no

*/
spoji([],L,L).
spoji([G1|R1],L2,[G1|L3]):-spoji(R1,L2,L3).