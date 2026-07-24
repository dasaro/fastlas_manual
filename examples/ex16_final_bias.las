% Semi-decomposable scoring: charge ONCE for using negation-as-failure,
% no matter how many negated literals a rule has. The only rule that fits
% here is  p :- not a, not b  (two negations) -- yet its 'naf' cost is 1.
#modeh(p).
#modeb(not a).
#modeb(not b).

#pos(e1, {p}, {},  {}).        % nothing present -> p holds
#pos(e2, {}, {p}, { a. }).     % a present       -> p false
#pos(e3, {}, {p}, { b. }).     % b present       -> p false

% stage 1 (#bias): compute an aggregate FEATURE of the whole rule
#bias("intermediate(naf) :- in_body(neg(X)).").
% stage 2 (#final_bias): assign the cost over those features
#final_bias("penalty(1, naf) :- intermediate(naf).").
