% Learn the graph-colouring conflict of LPXAI Lecture 3 as a verifier:
%   violated :- edge(V0,V1), colour(V0,V2), colour(V1,V2).
vertex(a). vertex(b).  shade(red). shade(blue).
#modeh(violated).
#modeb(edge(var(vertex), var(vertex))).
#modeb(colour(var(vertex), var(shade))).
#maxv(3).
#pos(ok1,  {},          {violated}, { edge(a,b). colour(a,red).  colour(b,blue). }).
#pos(ok2,  {},          {violated}, { edge(a,b). colour(a,blue). colour(b,red).  }).
#pos(bad1, {violated},  {},         { edge(a,b). colour(a,red).  colour(b,red).  }).
#pos(bad2, {violated},  {},         { edge(a,b). colour(a,blue). colour(b,blue). }).
#bias("penalty(1, body(X)) :- in_body(X).").
