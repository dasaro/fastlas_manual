% The pet-owner problem. Clingo scores the conflict
% with a weak constraint; FastLAS learns the conflict itself as a hard
% rule:
%   violated :- own(V0), own(V1), eats(V0,V1).
animal(dog). animal(cat). animal(fish).
#modeh(violated).
#modeb(own(var(animal))).
#modeb(eats(var(animal), var(animal))).
#maxv(2).
#pos(ok1, {}, {violated},
     { own(dog). own(fish). eats(cat,fish). eats(dog,cat). }).
#pos(ok2, {}, {violated}, { own(cat). eats(cat,fish). eats(dog,cat). }).
#pos(bad1, {violated}, {},
     { own(cat). own(fish). eats(cat,fish). eats(dog,cat). }).
#pos(bad2, {violated}, {},
     { own(dog). own(cat). eats(cat,fish). eats(dog,cat). }).
#bias("penalty(1, body(X)) :- in_body(X).").
