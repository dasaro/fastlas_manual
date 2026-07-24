person(p1). person(p2). person(p3). person(p4).
age_val(0..100).
#modeh(adult(var(person))).
#modeb(age(var(person), num_var(age_val))).
#maxv(1).
#pos(e1, {adult(p1)}, {},         { age(p1,20). }).
#pos(e2, {adult(p2)}, {},         { age(p2,40). }).
#pos(e3, {},          {adult(p3)}, { age(p3,10). }).
#pos(e4, {},          {adult(p4)}, { age(p4,17). }).
#bias("penalty(1, body(X)) :- in_body(X).").
