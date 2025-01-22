friend(ram, hari).
friend(hari, rita).
friend(rita, shyam).

friend_of_friend(X, Y):-
    friend(X, Z),
    friend(Z, Y).

friend_of_friend(X, Y):-
    friend(X, Z),
    friend_of_friend(Z, Y).

