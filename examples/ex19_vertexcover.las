% Learn one half of the vertex-cover definition of LPXAI Lecture 4:
%   covered(X,Y) :- edge(X,Y), in(X).
% The graph and the guessed set "in" are supplied as example contexts.
vertex(a). vertex(b).
#modeh(covered(var(vertex), var(vertex))).
#modeb(edge(var(vertex), var(vertex))).
#modeb(in(var(vertex))).
#maxv(2).
#pos(p1, {covered(a,b)}, {},             { edge(a,b). in(a). }).
#pos(p2, {},             {covered(a,b)}, { edge(a,b). in(b). }).
#pos(p3, {},             {covered(a,b)}, { edge(a,b).        }).
#pos(p4, {},             {covered(a,b)}, { in(a).            }).  % in(a) but no edge
#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
