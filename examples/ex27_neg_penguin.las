% A negative example says: no answer set may look like this. Here it is
% what
% stops the learner settling for "all birds fly".
bird(tweety). bird(polly). penguin(tweety).

#modeh(flies(var(bird))).
#modeb(bird(var(bird))).
#modeb(not penguin(var(bird))).
#maxv(1).

#pos(p1, {flies(polly)},  {}, {}).   % polly does fly
#neg(n1, {flies(tweety)}, {}, {}).   % tweety must NOT fly

#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
