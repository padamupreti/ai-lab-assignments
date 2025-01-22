edge(a, 1).
edge(a, 3).
edge(1, 2).
edge(1, 4).
edge(3, 4).
edge(2, 5).
edge(4, 5).

route(Ver1, Ver2):-
    edge(Ver1, Ver2),
    write(Ver1),
    write(' => '),
    write(Ver2),
    write(', ').

path(Ver1, Ver2):-
    route(Ver1, C),
    route(C, Ver2).

path(Ver1, Ver2):-
    route(Ver1, C),
    path(C, Ver2).

