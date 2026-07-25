% Deliberately UNSATISFIABLE: the target needs two variables, but #maxv(1)
% allows only one, so no candidate rule can cover p1. Section 8.3 diagnoses it.
node(a). node(b). edge(a,b).
#modeh(rel(var(node), var(node))).
#modeb(edge(var(node), var(node))).
#maxv(1).
#pos(p1, {rel(a,b)}, {}, {}).
#bias("penalty(1, body(X)) :- in_body(X).").
