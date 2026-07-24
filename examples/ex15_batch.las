% fixed parts (repeated every window): mode bias + scoring
#modeh(p).
#modeb(a).
#modeb(b).
#bias("penalty(1, body(X)) :- in_body(X).").

% window 1 examples
#pos(e1, {p}, {},  { a. b. }).
#pos(e2, {}, {p}, { }).

% all windows pooled into one batch task
#pos(e3, {}, {p}, { a. }).
