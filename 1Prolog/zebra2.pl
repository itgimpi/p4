/* The following version of the puzzle appeared in Life International in 1962:

There are five houses.
The Englishman lives in the red house.
The Spaniard owns the dog.
Coffee is drunk in the green house.
The Ukrainian drinks tea.
The green house is immediately to the right of the ivory house.
The Old Gold smoker owns snails.
Kools are smoked in the yellow house.
Milk is drunk in the middle house.
The Norwegian lives in the first house.
The man who smokes Chesterfields lives in the house next to the man with the fox.
Kools are smoked in the house next to the house where the horse is kept.
The Lucky Strike smoker drinks orange juice.
The Japanese smokes Parliaments.
The Norwegian lives next to the blue house.

Now, who drinks water? Who owns the zebra?

Nations:   Colors:    Drinks:     Pets:      X
1. Eng     1. Green   1. Orange   1. Dog     1. Par
2. Spa     2. Red     2. Water    2. Zebra   2. Kool
3. Jap     3. Yellow  3. Tea      3. Fox     3. LS
4. Ukr     4. Blue    4. Coffee   4. Snails  4. Ch
5. Nor     5. Ivory   5. Milk     5. Horse   5. OG

[3,4,5,2,1,     Nat
 5,3,1,2,4,     Col
 4,1,2,5,3,     Dri
 4,5,1,3,2,     Pet
 5,1,4,2,3]     X


*/

zebra :-
    Vars = [    N1, N2, N3, N4, N5,
                C1, C2, C3, C4, C5,
                D1, D2, D3, D4, D5,
                P1, P2, P3, P4, P5,
                X1, X2, X3, X4, X5 ],
    Vars in 1..5,
    alldifferent([N1, N2, N3, N4, N5]),
    alldifferent([C1, C2, C3, C4, C5]),
    alldifferent([D1, D2, D3, D4, D5]),
    alldifferent([P1, P2, P3, P4, P5]),
    alldifferent([X1, X2, X3, X4, X5]),

  

    N1 #= C2,
    N2 #= P1,
    D4 #= C1,
    N4 #= D3,
    X5 #= P4, 
    C3 #= X2,
    D5 #= 3,
    N5 #= 1,
    X3 #= D1,
    N3 #= X1,
    C1 #= C5 + 1, 
    udaljenost(N5, C4, 1),
    udaljenost(X2, P5, 1),
    udaljenost(X4, P3, 1),



    labeling(Vars),
    write(Vars), nl.

    udaljenost(X,Y,U) :- X #= Y - U.
    udaljenost(X,Y,U) :- X #= Y + U.









