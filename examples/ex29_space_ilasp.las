% A mode bias on its own, with no examples: enough for ILASP to
% enumerate the whole hypothesis space with its -s flag.
% See also ex29_space_fastlas.las.
bird(a). bird(b).
#modeh(flies(var(bird))).
#modeb(winged(var(bird))).
#modeb(penguin(var(bird))).
#maxv(1).
