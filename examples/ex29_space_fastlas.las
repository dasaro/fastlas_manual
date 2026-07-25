% The same mode bias as ex29_space_ilasp.las, as a FastLAS task. FastLAS
% does
% not enumerate the space: --space-size reports the candidate set it
% actually
% keeps for these examples.
bird(a). bird(b).
#modeh(flies(var(bird))).
#modeb(winged(var(bird))).
#modeb(penguin(var(bird))).
#maxv(1).
#pos(p1, {flies(a)}, {}, { winged(a). }).
#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
