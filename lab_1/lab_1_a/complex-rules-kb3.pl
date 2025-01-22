happy(vanu).
listens2Music(bhoj).

% AND or Logical Conjuction
playsAirGuitar(vanu):-
    listens2Music(vanu),
    happy(vanu).

% OR or Logical Disjunction
playsAirGuitar(bhoj):-
    happy(bhoj).
playsAirGuitar(bhoj):-
    listens2Music(bhoj).

% OR can also be expressed as
playsAirGuitar(bhoj):-
    happy(bhoj);
    listens2Music(bhoj).

