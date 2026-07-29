% Deploying a learned verifier (clingo, not FastLAS): a fixed generate
% step plus the rule FastLAS learned in the verifier example, turned
% into a constraint. clingo then enumerates the conflict-free
% labellings of the framework.
arg(a). arg(b). att(a,b).
0 { in(X) } 1 :- arg(X).
out(X) :- arg(X), not in(X).
attacked_by_in(X) :- att(Y,X), in(Y).
violated :- in(V0), attacked_by_in(V0), arg(V0).   % learned
:- violated.
#show in/1.
