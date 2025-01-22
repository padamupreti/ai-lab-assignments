fact(N):-
    fact(N, 1).

fact(UB, Res):-
    UB < 2,
    write(Res).

fact(UB, Res):-
    NewRes is Res * UB,
    NewUB is UB-1,
    fact(NewUB, NewRes).

