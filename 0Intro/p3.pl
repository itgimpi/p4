/* Maratonci trce pocasni krug */

musko(pantelija).
musko(maksimilijan).
musko(aksentije).
musko(milutin).
musko(laki).
musko(mirko).

roditelj(pantelija, maksimilijan).
roditelj(maksimilijan, aksentije).
roditelj(aksentije, milutin).
roditelj(milutin, laki).
roditelj(laki, mirko).

musko(djenka).
zensko(kristina).

dete(A, B) :-
    roditelj(B, A).

unuk(A, B) :- 
    roditelj(B, C),
    roditelj(C, A),
    musko(A).

tata(A, B) :-
    roditelj(A, B),
    musko(A).

deda(A, B) :-
    roditelj(A, C),
    roditelj(C, B),
    musko(A).

deda2(A, B) :-
    tata(A, C),
    roditelj(C, B).

   

