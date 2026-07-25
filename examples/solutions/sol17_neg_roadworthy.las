car(c1). car(c2). failed(c2).
#modeh(roadworthy(var(car))).
#modeb(car(var(car))).
#modeb(not failed(var(car))).
#maxv(1).
#pos(p1, {roadworthy(c1)}, {}, {}).
#neg(n1, {roadworthy(c2)}, {}, {}).
#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").
