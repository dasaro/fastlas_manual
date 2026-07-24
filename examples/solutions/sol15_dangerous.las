place(a). place(b). place(c). place(d).
danger_val(0..5).
#modeh(risky(var(place), var(place))).
#modeb(dangerous(var(place), var(place), num_var(danger_val))).
#maxv(2).
#pos(e1, {risky(a,b)}, {},           { dangerous(a,b,4). }).
#pos(e2, {risky(b,c)}, {},           { dangerous(b,c,3). }).
#pos(e3, {},           {risky(a,c)}, { dangerous(a,c,1). }).
#pos(e4, {},           {risky(c,d)}, { dangerous(c,d,1). }).
#pos(e5, {},           {risky(b,d)}, { dangerous(b,d,1). }).
#bias("penalty(1, body(X)) :- in_body(X).").
