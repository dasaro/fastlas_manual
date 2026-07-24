vertex(a). vertex(b).
#modeh(covered(var(vertex), var(vertex))).
#modeb(edge(var(vertex), var(vertex))).
#modeb(in(var(vertex))).
#maxv(2).
#pos(p1, {covered(a,b)}, {},             { edge(a,b). in(b). }).
#pos(p2, {},             {covered(a,b)}, { edge(a,b). in(a). }).
#pos(p3, {},             {covered(a,b)}, { edge(a,b).        }).
#pos(p4, {},             {covered(a,b)}, { in(b).            }).
#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
