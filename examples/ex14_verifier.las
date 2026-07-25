% Verifier reframing: the labelling in/1,out/1 is GIVEN as context, so
% the
% feature attacked_by_in is deterministic input (not derived from the
% target).
% We learn a constraint-style verifier  violated :- <features>.
arg(a).  arg(b).
attacked_by_in(X) :- att(Y,X), in(Y).

#modeh(violated).
#modeb(in(var(arg))).
#modeb(out(var(arg))).
#modeb(attacked_by_in(var(arg))).
#modeb(not attacked_by_in(var(arg))).
#maxv(1).

% valid   -> not violated
#pos(cf1,  {},          {violated}, { att(a,b). in(a). out(b). }).
% valid   -> not violated
#pos(cf2,  {},          {violated}, { att(a,b). out(a). in(b). }).
% invalid -> violated
#pos(bad1, {violated},  {},         { att(a,b). in(a). in(b). }).

#bias("penalty(1, body(X)) :- in_body(X).").
