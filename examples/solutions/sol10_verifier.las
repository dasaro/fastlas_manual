% The framework has arguments a, b, c and attacks a->b, b->c. Each
% context carries the framework and one labelling; conflict-free
% labellings exclude violated, the bad ones include it.
arg(a). arg(b). arg(c).
attacked_by_in(X) :- att(Y,X), in(Y).

#modeh(violated).
#modeb(in(var(arg))).
#modeb(out(var(arg))).
#modeb(attacked_by_in(var(arg))).
#modeb(not attacked_by_in(var(arg))).
#maxv(1).

#pos(cf1,  {},         {violated},
     { att(a,b). att(b,c). in(a). out(b). in(c). }).
#pos(cf2,  {},         {violated},
     { att(a,b). att(b,c). out(a). in(b). out(c). }).
#pos(bad1, {violated}, {},
     { att(a,b). att(b,c). in(a). in(b). out(c). }).
#pos(bad2, {violated}, {},
     { att(a,b). att(b,c). out(a). in(b). in(c). }).

#bias("penalty(1, body(X)) :- in_body(X).").
