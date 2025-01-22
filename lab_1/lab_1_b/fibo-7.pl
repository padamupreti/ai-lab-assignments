fibo(N):-
    fibo(1, 1, N).

fibo(A, B, N):-
    N < 1.

fibo(A, B, N):-
    write(A),
    write(', '),
    NewA is B,
    NewB is A+B,
    NewN is N-1,
    fibo(NewA, NewB, NewN).

