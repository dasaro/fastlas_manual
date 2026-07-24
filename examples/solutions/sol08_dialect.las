node(a). node(b). node(c).
att(a,b). att(b,c).
% legal rewrite of "X is attacked":  attacked(X) :- #count{Y:att(Y,X)} >= 1.
attacked(X) :- att(Y,X).
#modeh(safe(var(node))).
#modeb(not attacked(var(node))).
#maxv(1).
#bias("penalty(1, X) :- in_body(X).").
#pos(e1, {safe(a)}, {},        {}).
#pos(e2, {},        {safe(b)}, {}).
#pos(e3, {},        {safe(c)}, {}).
