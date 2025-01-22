male(ram).
male(shyam).
female(sita).
female(rita).

sibling(ram, rita).
sibling(rita, ram).
sibling(shyam, sita).
sibling(sita, shyam).

married(ram, sita).
married(sita, ram).
married(shyam, rita).
married(rita, shyam).

brother(X, Y):-
    male(X),
    sibling(X, Y).

sister(X, Y):-
    female(X),
    sibling(X, Y).

husband(X, Y):-
    married(X, Y),
    male(X).

wife(X, Y):-
    married(X, Y),
    female(X).

brother-in-law(X, Y):-
    (brother(X, W), married(W, Y));
    (husband(X, W), sibling(W, Y));
    (husband(X, Z), sibling(Z, W), married(W, Y)).

sister-in-law(X, Y):-
    (sister(X, W), married(W, Y));
    (wife(X, W), sibling(W, Y));
    (wife(X, Z), sibling(Z, W), married(W, Y)).

