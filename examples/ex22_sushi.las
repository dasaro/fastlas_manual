% A SUSHI-style preference task, using the feature encoding of LPXAI
% Lecture 4
% (style, major group, oiliness, price; cf. Kamishima's SUSHI preference
% data).
% The taste to be recovered: seafood that is oily enough.
%   likes(S) :- oiliness(S,O), O >= 3, seafood(S).
sushi(s1). sushi(s2). sushi(s3). sushi(s4). sushi(s5). sushi(s6).
oiliness_val(0..4).

#modeh(likes(var(sushi))).
#modeb(oiliness(var(sushi), num_var(oiliness_val))).
#modeb(seafood(var(sushi))).
#modeb(maki(var(sushi))).
#maxv(1).

#pos(e1, {likes(s1)}, {},          { oiliness(s1,4). seafood(s1). }).
#pos(e2, {likes(s2)}, {},          { oiliness(s2,3). seafood(s2). }).
% too lean
#pos(e3, {},          {likes(s3)}, { oiliness(s3,1). seafood(s3). }).
% too lean
#pos(e4, {},          {likes(s4)}, { oiliness(s4,0). seafood(s4). }).
% oily, not seafood
#pos(e5, {},          {likes(s5)}, { oiliness(s5,4). maki(s5).    }).
% oily, not seafood
#pos(e6, {},          {likes(s6)}, { oiliness(s6,3). maki(s6).    }).
#bias("penalty(1, body(X)) :- in_body(X).").
