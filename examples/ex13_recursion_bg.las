% Recursion is allowed in the BACKGROUND (transitive closure); the
% LEARNED rule
% stays non-recursive and just uses the recursively-derived feature.
reach(X,Y) :- edge(X,Y).
reach(X,Z) :- edge(X,Y), reach(Y,Z).
connected  :- reach(a,d).

#modeh(target).
#modeb(connected).

% path a..d -> connected
#pos(p1, {target}, {},       { edge(a,b). edge(b,c). edge(c,d). }).
% gap -> not connected
#pos(n1, {},       {target}, { edge(a,b). edge(c,d). }).
