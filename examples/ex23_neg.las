% A task stated with a negative example instead of an exclusion. It
% behaves differently under the two algorithms; see the pitfall in
% Section 3.3.
#modeh(cycle).
#modeb(rain).
#modeb(not rain).
#pos(d1, {cycle}, {}, {}).
#neg(d2, {cycle}, {}, { rain. }).
#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
