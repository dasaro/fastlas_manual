car(c1). car(c2). car(c3).
speed_reading(0..120).  weight_reading(0..3000).
#modeh(ok(var(car))).
#modeb(fast(var(car),  num_var(speed_reading))).
#modeb(heavy(var(car), num_var(weight_reading))).
#maxv(1).
#pos(p1, {ok(c1)}, {},       { fast(c1,80). heavy(c1,1500). }).
#pos(n1, {},       {ok(c2)}, { fast(c2,40). heavy(c2,1500). }).
#pos(n2, {},       {ok(c3)}, { fast(c3,80). heavy(c3,500).  }).
#bias("penalty(1, body(X)) :- in_body(X).").
