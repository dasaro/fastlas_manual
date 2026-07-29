% Knapsack: choose items within a size bound, maximising total value.
#const maxsize=15.
size(a,12; b,1; c,4; d,2; e,1).
value(a,4; b,2; c, 10; d,2; e,1).
{selected(O):size(O,S)}.
:- #sum{S,O:selected(O),size(O,S)} > maxsize.
#maximize{V,O:selected(O),value(O,V)}.
#show selected/1.
