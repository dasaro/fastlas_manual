% Hamiltonian cycles: guess a start and a set of edges, then test (LPXAI Lecture 2).
vertex(a;b;c;d;e;f).
edge(a,b; b,c; c,a; d,f; f,e; e,d; a,d; f,c; b,e).
{start(V):vertex(V)}=1.
{in(V1,V2):edge(V1,V2)}.
reachable(V) :- in(S,V), start(S).
reachable(V) :- reachable(V1), edge(V1,V).
:- vertex(V), not reachable(V).
:- in(V1,V2), in(V3,V2), V1 != V3.
:- in(V1,V2), in(V1,V3), V2 != V3.
#show in/2.
