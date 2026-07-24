#modeh(sel).
#modeb(a).
#modeb(b).

#pos(p1, {sel}, {},    { a. b. }).
#pos(p2, {},    {sel}, { c. }).

#bias("penalty(10, body(a)) :- in_body(a).").
#bias("penalty(1,  body(b)) :- in_body(b).").
