#modeh(cycle).
#modeb(rain).
#modeb(not rain).

#pos(d1, {cycle}, {}, {}).
#pos(d2, {}, {cycle}, {rain.}).

#bias("penalty(1, head) :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").

#predict(rainy_day, {cycle}, {}, { rain. }).
