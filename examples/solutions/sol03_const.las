colour(red). colour(blue). colour(green).
#modeh(sel).
#modeb(chosen(const(colour))).
#bias("penalty(1, X) :- in_head(X).").
#bias("penalty(1, X) :- in_body(X).").
#pos(p1, {sel}, {},    { chosen(blue).  }).
#pos(p2, {},    {sel}, { chosen(red).   }).
#pos(p3, {},    {sel}, { chosen(green). }).
