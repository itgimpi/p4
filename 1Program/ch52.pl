/* Using Chars 
Write ASCII's Till *
*/

go :-
    get0(X),
    process(X).

process(42).

process(X) :-
    X =\= 42,
    write(X), nl,
    go.

/* Using Chars 
Count Chars Till *
*/

go2(Total) :-
    count2(0, Total).

count2(OldCount, Result) :-
    get0(X),
    process2(X, OldCount, Result).

process2(42, OldCount, OldCount).
process2(X, OldCount, Result) :-
    X =\= 42,
    New is OldCount + 1,
    count2(New, Result).

