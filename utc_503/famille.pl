% MEN
homme(pierre).
homme(marc).
homme(paul).
homme(jacques).
homme(nicolas).
homme(alfredo).

% Women
femme(marie).
femme(sophie).
femme(catherine).
femme(kely).
femme(julie).

% Darons
parent(pierre, paul).
parent(marie, paul).
parent(marc, sophie).
parent(julie, sophie).
parent(jacques, marc).
parent(jacques, alfredo).
parent(marc, solange).
parent(marc,kely).



pere(X, Y) :- homme(X), parent(X, Y).
mere(X, Y) :- femme(X), parent(X, Y).
grand_parent(X, Z) :- parent(X,Y), parent(Y,Z).
grand_pere(X, Z) :- homme(X), grand_parent(X,Z).
frere(X,Z) :- parent(Y,X), parent(Y,Z).
oncle(X, Y) :- parent(Z,Y), frere(Z,X).
cousin(X, Y) :- parent(Z, X), frere(Z, W), parent(W, Y).

%  pere(pierre, paul). Pierre est il le pere de Paul ?
% parent(marc, sophie). Marc est-il parent de Sophie ?


% L = [pierre, marie, paul, sophie].
% [Tete | Queue] = [pierre, marie, paul].

longueur([], 0).
longueur([_ | Queue], N) :- longueur(Queue, M), N is M + 1.


% member(marie, [pierre, marie, paul]).

