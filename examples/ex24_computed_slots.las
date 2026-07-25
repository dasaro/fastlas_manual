% Computed inclusions and exclusions: the two set slots of every example
% are
% empty, and the background derives them instead (Section 3.3).
animal(a). animal(b).
inclusion(flies(X)) :- animal(X), goal(X).
exclusion(flies(X)) :- animal(X), not goal(X).
#modeh(flies(var(animal))).
#modeb(winged(var(animal))).
#pos(e1, {}, {}, { goal(a). winged(a). }).
#pos(e2, {}, {}, { }).
#bias("penalty(1, body(X)) :- in_body(X).").
