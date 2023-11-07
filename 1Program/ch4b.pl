/*                           Operators

predicate  atoms
voli      (ana, milovan).
functor    arg's
operator   operandi
prefix


ana voli milovan.
ann likes michael.
    operator
    infix



#infix
:-op(150, xfy, likes).
:-op(150, xfy, owns).

#postfix
:-op(150, xf, is_female).
?-op(150, xf, isa_cat).

ann likes michael.
ann is_female.
thomas isa_cat.
ann owns thomas.

mickey likes X :-
    X is_female,
    X owns Y,
    Y isa_cat.

#prefix
go :- >(2,1).
go2 :- <(2,1).

 :-op(700, xfy, [..., <, ...])  
#infix
go3 :- 2>1.
go4 :- 2<1.   



*/

idi :- X is 1 + 2 + 3 + 4 + 5, writeln(X).
/* idi2 :- X2 is 1 + 2 + 3 + 4 + 5. */

/*

Arithmetics 

before:
X is Unbound Var, Expr. to eval.
X is 1+2+3+4+5
X is Bound to Number 15, yes.

+, -, *, /

** stepen

10**1000 OK

int 
// (Python), mod (Pascal)

float, round

max, min
abs, sin, cos, sqrt


*/

ari1 :-
    No1 is 5 // 2,
    No2 is 5 mod 2,
    writeln(No1), writeln(No2). 

ari2 :-
    F1 is sqrt(2),
    writeln(F1).

ari3 :- F2 is round(3.14), F3 is round(4.51),
        writeln(F2), writeln(F3).

ari4 :-
    Br1 is 1, Br2 is 2,
    Br3 is max(Br1, Br2), Br4 is min(Br1, Br2),
    writeln(Br3), writeln(Br4).

ari5 :-
    X is 12+4, Y is 2*3-1, Z is X*Y + 2*X,
    writeln(Z).

uni1 :-
    U1 is 12, U1 is 6+6.

uni2 :-
    U2 is 12, U2 is 6+7.

/* Unification, is/2,

2nd arg. is evaluated , and
this value is unified with 1st arg.

a) if 1st arg. unboud var.
it is bound to the value of 2nd arg.

b) if 1st arg. boud var.
it is compared to the value of 2nd arg.
If they are the same, success
else no

*/

plus1(Br11) :- Br11 is Br11 + 1.

plus1(Br11, Br12) :- Br12 is Br11 + 1, writeln(Br12).

/* Rel. ope.
C ==,  !=,  >, <, >=, <=
P =:=, =\=, >, <, >=, =<


*/

rel1 :- 2 =:= 2,
        2 =:= 1+1,
        1+1 =:= 8//4.

par1(N) :- 0 =:= N mod 2.
par2(N2) :- N3 is N2 // 2, N3*2 =:= N2.

/* Identical Term 
T1 == T2
*/

ide1 :- likes(iv5, prolog) == likes(iv5, prolog).

ide2 :- likes(IDE, prolog) == likes(IDE, prolog).

ide3 :- X is 10, pred1(X) == pred1(10).

