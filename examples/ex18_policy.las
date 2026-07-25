% Access-control policy learning (AAAI 2020 style): learn an `accept`
% rule from
% granted/denied requests. Each request's attributes are its example
% context.
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
