% Verifier reframing: the labelling in/1 and out/1 is GIVEN as context,
% so attacked_by_in/1 is deterministic input rather than something
% learned through the target predicate.
% We learn a constraint-style verifier:
%   violated :- <features>.
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
