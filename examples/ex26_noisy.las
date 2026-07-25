% e1 and e2 contradict each other. e1 is hard (no weight) so it must be covered;
% e2 carries penalty 1, so FastLAS may leave it uncovered and pay 1 for doing so.
#modeh(p).
#modeb(a).
#pos(e1,   {p}, {},  { a. }).
#pos(e2@1, {},  {p}, { a. }).
#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
