% Positive examples are covered BRAVELY: an inclusion need hold in only SOME
% answer set, not all of them. The background has two answer sets, {x, p} and
% {y}; only the first contains q, and that is enough for e1 to be covered.
1 { x ; y } 1.
p :- x.
#modeh(q).
#modeb(p).
#pos(e1, {q}, {}, {}).
#pos(e2, {}, {q}, { :- x. }).   % context forces y, so p fails and q must not hold
#bias("penalty(1, body(X)) :- in_body(X).").
