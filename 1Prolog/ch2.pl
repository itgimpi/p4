/* Ch2 Klauzule i predikati
Clauses and Predicates

Clauses

Program consists of clauses.

Clause is terminated by dot(.).

Clause -> Facts or Rules

Facts

*/

autumn.
likes(ana, milovan).
likes(iv5, prolog).
dog(hachiko).
cat(thomas).

/* 
Rules

h :- t1, t2, ..., tn.

h is head, ti's are terms.

:- is neck.

Body of the clause - conditions in order,
for conclusion, to be satisfied, each goal is term.

Head is true if t1, ..., tn are all true.

animal(dog). animal(cat). animal(elephant).
large(elephant).
large(solitaire).

large_animal(Z) :- animal(Z), large(Z).

*/

cat(thomas). 
cat(garfield).
cat(lionking). large(lionking).

dog(pluto).
dog(ben).

large_animal(X) :- cat(X), large(X).

/*

Predicates 

*/
father(aca, aca2).

parent(pera, perica).
parent(X, Y) :- father(X, Y).
#parent(X, Y) :- mother(X, Y).

parent(mika).

parent(X) :- father(X, Y).


