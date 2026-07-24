coin(c1). coin(c2). coin(c3).
#modeh(heads(var(coin))).
#modeh(tails(var(coin))).
#modeb(not heads(var(coin))).
#modeb(not tails(var(coin))).
#maxv(1).
#pos(f1, {heads(c1), tails(c2), heads(c3)}, {tails(c1), heads(c2), tails(c3)}, {}).
#pos(f2, {heads(c1), heads(c2), tails(c3)}, {tails(c1), tails(c2), heads(c3)}, {}).
#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
