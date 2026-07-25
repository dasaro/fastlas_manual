% At what penalty on e1 does FastLAS start to believe it? Learning "p." costs 1
% (the head) plus 1 for abandoning e2, so 2; abandoning e1 instead costs its own
% penalty. The rule wins as soon as that penalty exceeds 2, i.e. from 3 upwards.
#modeh(p).
#modeb(a).
#pos(e1@3, {p}, {},  { a. }).
#pos(e2@1, {},  {p}, { a. }).
#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
