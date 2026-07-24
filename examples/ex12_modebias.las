node(a). node(b). node(c). node(d). node(e). node(f). node(g). node(h).
edge(a,b). edge(b,a). edge(b,c). edge(c,b). edge(c,d). edge(d,c).
edge(e,f). edge(f,e). edge(f,g). edge(g,f). edge(g,h). edge(h,g).
near(a,c). near(c,a). near(e,g). near(g,e).
far(a,h). far(h,a). far(a,g). far(d,e).

#modeh(rel(var(node), var(node))).
#modeb(edge(var(node), var(node))).
#modeb(near(var(node), var(node))).
#modeb(far(var(node), var(node))).
#modeb(var(node) != var(node)).

#pos(p1, {rel(a,b)}, {},        { edge(a,b). }).
#pos(p2, {rel(c,d)}, {},        { edge(c,d). }).
#pos(p3, {rel(f,g)}, {},        { edge(f,g). }).
#pos(p4, {},         {rel(a,c)}, { near(a,c). }).
#pos(p5, {},         {rel(a,h)}, { far(a,h). }).

#bias("penalty(1, head) :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
#maxv(2).
