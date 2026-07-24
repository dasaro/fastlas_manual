#modeh(p).
#modeb(not a).
#modeb(not b).
#pos(e1, {p}, {},  {}).
#pos(e2, {}, {p}, { a. }).
#pos(e3, {}, {p}, { b. }).
#bias("intermediate(naf) :- in_body(neg(X)).").
#final_bias("penalty(1, naf) :- intermediate(naf).").
