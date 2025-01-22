mult_table(N):-
    mult_table(1, 10, N).

mult_table(LB, UB, N):-
    LB > UB.

mult_table(LB, UB, N):-
   LB =< UB,
   Val is LB * N,
   write(LB),
   write(' x '),
   write(N),
   write(' = '),
   write(Val),
   nl,
   NewLB is LB+1,
   mult_table(NewLB, UB, N).

