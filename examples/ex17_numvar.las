car(c1). car(c2). car(c3). car(c4).
speed_reading(0..120).
#modeh(ok(var(car))).
#modeb(observed(var(car), num_var(speed_reading))).
#maxv(1).
#pos(p1, {ok(c1)}, {},       { observed(c1, 60). }).
#pos(p2, {ok(c2)}, {},       { observed(c2, 80). }).
#pos(n1, {},       {ok(c3)}, { observed(c3, 30). }).
#pos(n2, {},       {ok(c4)}, { observed(c4, 110). }).
#bias("penalty(1, body(X)) :- in_body(X).").
