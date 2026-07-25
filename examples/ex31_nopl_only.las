% Solvable under --nopl, UNSATISFIABLE under --opl. The target predicate
% "suppressed" appears in no example: only "alarm" is ever observed, and
% suppressed reaches it through the background rule.
alarm :- fault, not suppressed.

#modeh(suppressed).
#modeb(safe).

#pos(e1, {},      {alarm}, { fault. safe. }).
#pos(e2, {alarm}, {},      { fault. }).

#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
