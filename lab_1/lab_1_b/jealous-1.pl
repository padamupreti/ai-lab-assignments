male(ram).
male(hari).
female(rita).
female(monica).
female(soma).

loves(ram, rita).
loves(hari, rita).
loves(rita, soma).
loves(monica, soma).

jealous(X, Y):-
    loves(X, Z),
    loves(Y, Z),
    X \== Y,
    male(X),
    male(Y),
    female(Z).

jealous(X, Y):-
    loves(X, Z),
    loves(Y, Z),
    X \== Y,
    female(X),
    female(Y),
    male(Z).

