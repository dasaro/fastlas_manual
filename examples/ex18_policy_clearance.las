role(manager). role(staff).   clearance(high). clearance(low).
#modeh(accept).
#modeb(subject_role(const(role))).
#modeb(subject_clearance(const(clearance))).

#pos(g1, {accept}, {},
     { subject_role(manager). subject_clearance(high). }).
#pos(d1, {}, {accept},
     { subject_role(staff). subject_clearance(low). }).

% the usual per-literal bias, plus a domain criterion: prefer
% clearance-based policies by charging extra for role conditions
#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
#bias("penalty(1, prefer_clearance) :- in_body(subject_role(V)).").
