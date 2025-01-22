happy(yogita).
listens2Music(ria).
listens2Music(yogita):- happy(yogita).
playsAirGuitar(ria):- listens2Music(ria).
playsAirGuitar(yogita):- listens2Music(yogita).

