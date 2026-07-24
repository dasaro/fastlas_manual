role(manager). role(staff). clearance(high). clearance(low).
#modeh(accept).
#modeb(subject_role(const(role))).
#modeb(subject_clearance(const(clearance))).
#pos(g1, {accept}, {},        { subject_role(manager). subject_clearance(high). }).
#pos(d1, {},       {accept},  { subject_role(staff).   subject_clearance(low).  }).
#bias("penalty(1, body(X)) :- in_body(X).").
