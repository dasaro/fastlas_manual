% Recursion is allowed in the BACKGROUND: reach/2 is a transitive
% closure, while the LEARNED rule stays non-recursive and just uses the
% derived feature connected/0.
reach(X,Y) :- edge(X,Y).
reach(X,Z) :- edge(X,Y), reach(Y,Z).
connected  :- reach(a,d).

#modeh(target).
#modeb(connected).

% path a..d -> connected
#pos(p1, {target}, {},       { edge(a,b). edge(b,c). edge(c,d). }).
% gap -> not connected
#pos(n1, {},       {target}, { edge(a,b). edge(c,d). }).

#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
