person(ann). person(bob). person(carl). person(dee).
parent(ann,bob). parent(bob,carl). parent(carl,dee).

#modeh(grandparent(var(person),var(person))).
#modeb(parent(var(person),var(person))).
#maxv(3).
#bias("penalty(1, head)    :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").

#pos(p1,
  { grandparent(ann,carl), grandparent(bob,dee) },
  { grandparent(ann,bob), grandparent(bob,carl), grandparent(carl,dee), grandparent(ann,dee) },
  {}).
