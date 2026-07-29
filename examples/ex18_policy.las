% Access-control policy learning (AAAI 2020 style): learn an `accept`
% rule from granted and denied requests. Each request's attributes live
% in that example's context.
role(manager). role(staff).   clearance(high). clearance(low).
#modeh(accept).
#modeb(subject_role(const(role))).
#modeb(subject_clearance(const(clearance))).

% granted
#pos(g1, {accept}, {},
     { subject_role(manager). subject_clearance(high). }).
% denied
#pos(d1, {}, {accept},
     { subject_role(staff). subject_clearance(low). }).

% the usual per-literal bias: "best" means "shortest"
#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
