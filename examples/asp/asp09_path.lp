% Find a path from start to end (LPXAI Lecture 3, exam question).
place(a;b;c;d). start(a). end(d).
street(a,b;a,c;b,c;c,d;b,d).
dangerous(a,b,4;a,c,1;b,c,3;c,d,1;b,d,1).
0{in(A,B) : street(A,B)}1 :- place(A).
in_vertex(A) :- in(A,_).
in_vertex(A) :- in(_,A).
path(A,B) :- in(A,B).
path(A,B) :- in(A,C), path(C,B).
:- start(S), end(E), not path(S,E).
:- in_vertex(A), start(S), A != S, not path(S,A).
:- in_vertex(A), end(E), A != E, not path(A,E).
#show in/2.
