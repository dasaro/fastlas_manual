% fixed parts (repeated every window): mode bias + scoring
#modeh(p).
#modeb(a).
#modeb(b).
#bias("penalty(1, body(X)) :- in_body(X).").

% window 2 brings ONE new example (the cache carries e1, e2)
#pos(e3, {}, {p}, { a. }).
