% A vertex cover of the graph (exam solution).
vertex(a;b;c;d;e;f).
edge(a,b;b,c;c,a;d,f;f,e;e,d;a,d;f,c;b,e).
{in(X) : vertex(X)}.
covered(X,Y) :- edge(X,Y), in(X).
covered(X,Y) :- edge(X,Y), in(Y).
:- edge(X,Y), not covered(X,Y).
#show in/1.
