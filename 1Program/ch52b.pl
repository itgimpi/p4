/* Using Chars 
Write ASCII's until *
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
Count Chars Til *
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

/* Using Chars 
Count Vowels Til *
*/

go3(Vowels) :-
    count3(0, Vowels).

count3(OldVowels, TotalVowels) :-
    get0(X),
    process3(X, OldVowels, TotalVowels).

process3(42, OldVowels, OldVowels).
process3(X, OldVowels, TotalVowels) :-
    X =\= 42,
    processChar(X, OldVowels, New),
    count3(New, TotalVowels).

processChar(X, OldVowels, New) :-
    vowel(X),
    New is OldVowels + 1.
processChar(_, OldVowels, OldVowels).

vowel(97).
vowel(101).
vowel(105).
vowel(111).
vowel(117).

vowel(65).
vowel(69).
vowel(73).
vowel(79).
vowel(85).