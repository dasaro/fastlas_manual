% An ILASP task, not a FastLAS one. Run it with:  ILASP --version=4
% <file>
% Three coins are flipped twice. The only hypothesis that covers both
% flips is
% a pair of rules forming an even loop through negation, which ILASP
% will build
% and FastLAS will not. The FastLAS rendering of the same task is in
% examples/solutions/sol16_coins.las, and returns UNSATISFIABLE.
coin(c1). coin(c2). coin(c3).

#modeh(heads(var(coin))).
#modeh(tails(var(coin))).
#modeb(heads(var(coin))).
#modeb(tails(var(coin))).
#modeb(coin(var(coin))).
#maxv(1).

% #pos({heads(c1), tails(c2), heads(c3)}, {tails(c1), heads(c2),
% tails(c3)}).
% #pos({heads(c1), heads(c2), tails(c3)}, {tails(c1), tails(c2),
% heads(c3)}).
