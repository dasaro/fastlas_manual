% Two examples that contradict each other, both noisy. FastLAS keeps whichever
% is more expensive to abandon: here e1, at the price of leaving e2 uncovered.
% Swap the two weights and the answer flips to the empty hypothesis.
#modeh(p).
#modeb(a).

#pos(e1@3, {p}, {},  { a. }).   % costs 3 to ignore
#pos(e2@1, {},  {p}, { a. }).   % costs 1 to ignore

#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
