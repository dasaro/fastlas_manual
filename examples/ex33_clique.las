% Learning the clique conflict: a chosen set is bad as soon as it holds
% two distinct vertices that are not adjacent. The background makes the
% adjacency symmetric so one literal suffices.
vertex(a). vertex(b). vertex(c).
adj(X,Y) :- edge(X,Y).
adj(X,Y) :- edge(Y,X).

#modeh(violated).
#modeb(in(var(vertex))).
#modeb(not adj(var(vertex), var(vertex))).
#modeb(var(vertex) != var(vertex)).
#maxv(2).

#pos(ok1,  {},         {violated}, { edge(a,b). in(a). in(b). }).
#pos(ok2,  {},         {violated}, { edge(a,b). in(a). }).
#pos(bad1, {violated}, {},         { edge(a,b). in(a). in(c). }).
#pos(bad2, {violated}, {},         { edge(a,b). in(b). in(c). }).

#bias("penalty(1, body(X)) :- in_body(X).").
