#modeh(p).
#modeb(a).
#modeb(b).
#pos(w1, {p}, {}, { a. }).
#pos(w2, {}, {p}, { b. }).
#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
