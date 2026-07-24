fault :- did(A), not permitted(A), act(A).
#modeh(permitted(var(act))).
#modeb(authorised(var(act))).
#maxv(1).
#bias("penalty(1, X) :- in_head(X).").
#bias("penalty(1, X) :- in_body(X).").
#pos(e1, {},      {fault}, { act(a1). did(a1). authorised(a1). }).
#pos(e2, {fault}, {},      { act(a2). did(a2). }).
