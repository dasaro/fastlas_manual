car(c1). car(c2). car(c3). car(c4). car(c5). car(c6).
speed_val(0..300). weight_val(0..3000).
#modeh(ok(var(car))).
#modeb(speed(var(car),  num_var(speed_val))).
#modeb(weight(var(car), num_var(weight_val))).
#maxv(1).
% ok  ==  speed in [70,80]  AND  weight in [1400,1500].
% Every marginal value used by a positive is ALSO used by a negative,
% so NO single-condition rule can separate -- one rule must bound BOTH.
#pos(p1, {ok(c1)}, {},       { speed(c1,70).  weight(c1,1400). }).
#pos(p2, {ok(c2)}, {},       { speed(c2,80).  weight(c2,1500). }).
#pos(n1, {},       {ok(c3)}, { speed(c3,70).  weight(c3,2500). }).  % speed 70 shared, too heavy
#pos(n2, {},       {ok(c4)}, { speed(c4,80).  weight(c4,500).  }).  % speed 80 shared, too light
#pos(n3, {},       {ok(c5)}, { speed(c5,200). weight(c5,1400). }).  % weight 1400 shared, too fast
#pos(n4, {},       {ok(c6)}, { speed(c6,10).  weight(c6,1500). }).  % weight 1500 shared, too slow
#bias("penalty(1, body(X)) :- in_body(X).").
