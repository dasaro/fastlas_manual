% The eight queens puzzle (LPXAI Lecture 2).
8{ queen(1..8,1..8) }8.
:- queen(R,C1), queen(R,C2), C1 < C2.
:- queen(R1,C), queen(R2,C), R1 < R2.
:- queen(R1,C1),queen(R2,C2),R1<R2,|R1-R2|=|C1-C2|.
