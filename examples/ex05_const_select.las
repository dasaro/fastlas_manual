#modeh(sel).
#modeb(chosen(const(digit))).
#bias("penalty(1, X) :- in_head(X).").
#bias("penalty(1, X) :- in_body(X).").

#pos(p1, {sel}, {},    { chosen(2). digit(2). }).
#pos(p2, {},    {sel}, { chosen(1). digit(1). }).
#pos(p3, {},    {sel}, { chosen(3). digit(3). }).
