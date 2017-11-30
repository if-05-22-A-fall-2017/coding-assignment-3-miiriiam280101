parent(adam, john).
parent(eve, john).
parent(eve, lisa).
parent(john, anne).
parent(john, pat).
parent(pat, jacob).
parent(carol, jacob).
grandparent(X,Z) :- parent(X,Y), parent(Y,Z).
ancestor(X,Z) :- parent(X,Z).
ancestor(X,Z) :- parent(X,Y), ancestor(Y,Z).
head([H|T], H).
tail([H|T],T).
isMember(X, [X|_]).
isMember(X, [_|T]):- isMember(X,T).
prepend(L, E, 1, [E|L]).
prepend([_|T],E, Stelle, [_|U]):- S is Stelle-1,prepend(T,E, S,U).
append([], L1,L2).
append([K|R1], L2,[K|R2]):- append(R1,L2,R2).
laenge([],0).
laenge([_|T],L):-laenge(T,K),L is K+1.
remove_list([], _, []).
remove([X|T], L2, R):- member(X, L2), !, remove(T, L2, R). 
remove([X|T], L2, [X|R]):- remove(T, L2, R).