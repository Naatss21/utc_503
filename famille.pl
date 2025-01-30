% MEN
homme(pierre).
homme(marc).
homme(paul).
homme(jacques).
homme(nicolas).

% Women
femme(marie).
femme(sophie).
femme(catherine).
femme(kely).

% Darons
parent(pierre, paul).
parent(marie, paul).
parent(marc, sophie).
parent(jacques, marc).
parent(marc, solange).
parent(marc,kely).



pere(X, Y) :- homme(X), parent(X, Y).
mere(X, Y) :- femme(X), parent(X, Y).
grand_parent(X, Z) :- parent(X,Y), parent(Y,Z).
grand_pere(X, Z) :- homme(X), grand_parent(X,Z).
frere(X,Z) :- parent(Y,X), parent(Y,Z).


%  pere(pierre, paul). Pierre est il le pere de Paul ?
% parent(marc, sophie). Marc est-il parent de Sophie ?
