/*                           Operators

predicate  atoms
voli      (ana, milovan).
functor    arg's

ana voli milovan.
ann likes michael.


#infix
:-op(150, xfy, likes).

#postfix
:-op(150, xf, is_female).
:-op(150, xf, is_acat).
?-op(150, xfy, owns).


ann likes michael.
ann is_female.
thomas is_acat.
ann owns thomas.

mickey likes X :- 
    X is_female,
    X owns Y,
    Y is_acat. 

 :-op(700, xfy, [..., >, ...]) */
go :- 10>5.
go2 :- 10<5.

go3 :- >(10, 5).
go4 :- <(10, 5).

/* Arithmetics 

before
X je Unbound Var, 1 + 2 + 3 + 4 + 5 je expr. to eval.
     nevezana
X is 1 + 2 + 3 + 4 + 5, writeln(X).

after
X is 15
*/

idi :- X is 1 + 2 + 3 + 4 + 5, writeln(X).

/* ar. oper. +, -, *, /
//, mod, 

float
sqrt, sin, cos, round

max, min


*/

arit :-
    X is 1 + 2,
    Y is 10 + 20,
    Z is X + Y,
    writeln(X),
    writeln(Y),
    writeln(Z).

arit2 :- 
    B1 is 3.14,
    B2 is 1,
    B3 is B1 + B2,
    writeln(B3).

arit3 :-
    BR is sqrt(2),
    writeln(BR).

arit4 :-
    N1 is 5,
    N2 is 2,
    N3 is N1 // N2,
    N4 is N1 mod N2,
    writeln(N3),
    writeln(N4).

arit5 :- 
    N10 is round(3.14), N11 is round(3.54),
    writeln(N10), writeln(N11).

arit6 :-
    X is 10, X is 5+5.

/* Unification

2nd arg. of is/2 is evaluated, and
this value is unified with 1st arg.

a) if 1st  arg. unbound var.,
it is bound with value of 2nd,
goal succeded.

b) if 1st  arg. bound var or number,
it is compared with 2nd.

X is 10, X is X + 1

plus1(Broj) :- Broj is Broj + 1. NE VALJA

plus2(Broj2, Pom) :- Pom is Broj2 + 1. VALJA

*/

plus1(Broj) :- Broj is Broj + 1.

plus2(Broj2, Pom) :- Pom is Broj2 + 1.

/*    Rel. op.

=:= eq
=\= neq
>
>=
<
=<

*/

rel :-
    10 =:= 10,
    10 =\= 5,
    5 > 2,
    5 >= 3,
    2 < 43,
    2 =< 134.

equ :-
    10 =:= 10,
    5 + 5 =:= 1 + 9,
    sqrt(36) + 4 =:= 11-1.

/* Identical Terms?
T1 == T2
*/

ideter :-
    likes(ana, mil) == likes(ana, mil),
    IDE is 10, pred1(IDE) == pred1(10).

nideter :-
    5+5 == 9+1.

/* Non Identical Terms?
T1 \== T2
*/

ni2 :-
    5+5 \== 9+1.

ni3 :-
    not 5+5 == 9+1.

/*
Identical Terms with Unification
T1=T2
Kao == uz dodatak:
Da li postoje vredn. promenljivih
tako da T1 i T2 budu isti?

Query: ?- pred1(X) = pred1(10)

*/

p1 :- pred1(X) = pred1(10), writeln(X). 

p2 :- likes(X, prolog) = likes(iv5, prolog), writeln(X).

iks :- X=0, X=:=0.

iks2 :- 5+5=10+0.

iks31 :- 5+X=9+1, writeln(X).
iks32 :- 5+X=10, writeln(X).
iks31 :- 5+X=5+5, writeln(X).

iks4 :- likes(X, prolog) = likes(Y, prolog).

/*
NonIdentical Terms with Unification
T1\=T2


Query: ?- 5+5 \= 9+1

*/

/*

Logical Operators

and                ,
Goal1, Goal2, ....

or                 ;
Goal1; Goal2; ....

not

*/

log1 :- X=0, X is 0.
log2 :- X=0, not X is 0.
log3 :- 1<2, 9 is 4+5.