go:-
    write("Enter your first number: "),nl,
    read(X),nl,
    write("Enter your second number: "),nl,
    read(Y),nl,
    number(X,Y).

number(X,Y):- Subtract is X-Y, nl,
    write("Subtraction is: "),nl,
    write(Subtract).

