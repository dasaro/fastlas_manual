% The pet owner problem: own as many animals as possible, but prefer that
% owned animals do not eat one another (weak constraints).
animal(dog;cat;fish).
eats(cat, fish; dog, cat).
0 { own(A) } 1 :- animal(A).
:~ own(A).[-1@1, A]
:~ own(A), own(B), eats(A, B).[1@2, A, B]
#show own/1.
