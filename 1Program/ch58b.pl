/* IO Using Files

current in. stream -> write -> current out. stream

keyboard, screen ~ user (friendly)

Output

tell/1
tell('outfile.txt').
tell(user). <-> told.

ispis u fajl 'out1.txt'
*/




izlaz1 :-
    tell('out1.txt'),
    write('11111'), nl,
    told.





/*
Input

see/1
see('in1.txt').
see(user) <-> seen.
seeing(X).


*/

readline :-
    get0(X),
    process(X).

process(10).

process(X) :-
    X =\= 10,
    put(X),
    nl,
    readline.



/*
malo promenjen primer sa proslog casa
broji samoglasnike
*/



go3(Vowels) :-
    see('in3.txt'),
    count3(0, Vowels),
    seen.

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



/*
Read only first 5 terms */

readterms(Infile, Outfile) :-
    see(Infile),
    tell(Outfile),
    read(T1), write(T1), nl,
    read(T2), write(T2), nl,
    read(T3), write(T3), nl,
    read(T4), write(T4), nl,
    read(T5), write(T5), nl,
    seen, told.

/*
nije bas najbolje resenje,
In i Out se vrate na user,
bolje bilo da vrate na preth. stanje

kako da se vrati preth. stanje a ne user?

S vezuje preth. stanje, T ... isto
*/

readterms2(Infile, Outfile) :-
    seeing(S), see(Infile),
    telling(T), tell(Outfile),
    read(T1), write(T1), nl,
    read(T2), write(T2), nl,
    read(T3), write(T3), nl,
    read(T4), write(T4), nl,
    read(T5), write(T5), nl,
    see(S), tell(T).

copychars(OutFile) :-
    telling(TT), 
    tell(OutFile),
    copycharacters,
    told, tell(TT).

copycharacters :-
    get0(NN),
    processs(NN).

processs(33).
processs(NN) :-
    NN =\= 33,
    put(NN),
    copycharacters.

/*
copychars('chars.txt') */