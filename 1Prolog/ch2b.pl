/*

Clauses and Predicates

Clauses

Program consists of clauses.

Clause is terminated by dot(.).

Clause -> Facts or Rules

Facts

head.

*/

jesen.

likes(ana, milovan).


/*

Rules

h    :-    t1, t2, ..., tn.
head neck  body

Body of the clause - conditions in order,
for conclusion (head),
to be satisfied, each goal is term.

Head is True if t1...tn are all true.



*/

dog(jackieII).
dog(snoopy).

cat(garfield).
cat(thomas).
cat(lionking). large(lionking).

mouse(mickey).

large_animal(X) :- cat(X), large(X).

/*

Predicates



*/

parent(pera, peraII).
parent(pera, perica).
parent(pera, aca).

parent(X,Y) :- father(X, Y).
parent(X,Y) :- mother(X, Y).

father(mika, mikica).
mother(mila, milica).

#parent(mika).

parent(X) :- parent(X, _).

go :- parent( pera, C),
    write('Pera has a child '),
    write(C),
    nl.

go(X) :- parent( X, C),
    write('Pera has a child '),
    write(C),
    nl.





