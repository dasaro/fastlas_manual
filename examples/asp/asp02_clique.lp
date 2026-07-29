% Guess-and-test: a clique of the 6-vertex graph.
vertex(a;b;c;d;e;f).
edge(a,b; b,c; c,a; d,f; f,e; e,d; a,d; f,c; b,e).
{ in(V) : vertex(V) } = 3.
:- in(V1), in(V2), V1!=V2, not edge(V1,V2), not edge(V2,V1).
#show in/1.
