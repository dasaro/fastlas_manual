% Graph colouring, minimising the number of colours used.
color(blue;red;green;purple;white;black).
edge(a,b;b,c;c,a;d,f;f,e;e,d;a,d;f,c;b,e).
vertex(a;b;c;d;e;f).
{color(X,C) : color(C) } = 1 :- vertex(X).
:- edge(X,Y), color(X,C1), color(Y,C2), C1 = C2.
#minimize{1,C : color(X,C)}.
#show color/2.
