arg(a). arg(b).
attacked_by_in(X) :- att(Y,X), in(Y).
#modeh(violated).
#modeb(in(var(arg))).
#modeb(attacked_by_in(var(arg))).
#modeb(not attacked_by_in(var(arg))).
#maxv(1).
#pos(cf1,  {},         {violated}, { att(a,b). in(a). out(b). }).
#pos(cf2,  {},         {violated}, { att(a,b). out(a). in(b). }).
#pos(bad1, {violated}, {},         { att(a,b). in(a). in(b). }).
#bias("penalty(1, body(X)) :- in_body(X).").
