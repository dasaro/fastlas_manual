animal(eagle).  animal(ostrich).  animal(sparrow).

#modeh(flies(var(animal))).
#modeb(winged(var(animal))).
#modeb(not flightless(var(animal))).
#maxv(1).
#bias("penalty(1, X) :- in_head(X).").
#bias("penalty(1, X) :- in_body(X).").

#pos(p1, {flies(eagle)},   {},            { winged(eagle).   }).
#pos(p2, {flies(sparrow)}, {},            { winged(sparrow). }).
#pos(p3, {},               {flies(ostrich)}, { winged(ostrich). flightless(ostrich). }).
