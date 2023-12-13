male(bob).
male(tom).
male(peter).
male(jim).
female(liza).
female(amanita).
female(nipa).
female(pam).

parents(bob,jim).
parents(bob,pam).
parents(amanita,jim).
parents(amanita,pam).
parents(jim,liza).
parents(pam,petar).
parents(pam,tom).
parents(peter,nipa).

grandfather(X,Z):-parents(Y,Z),parents(X,Y),male(X).
grandmother(X,Z):-parents(Y,Z),parents(X,Y),female(X).
sibling(X,Y):-parents(Z,X),parents(Z,Y),X\==Y.
mother(X,Y):-parents(X,Y),female(X).
brother(X,Y):-parents(Z,X),parents(Z,Y),male(X),X\==Y.
sister(X,Y):-parents(Z,X),parents(Z,Y),female(X),X\==Y.
uncle(X,Y):-brother(X,Z),parents(Z,Y).


