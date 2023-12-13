a(Power,Mul,Add,Subtract, Remainder):-

write("Enter first Number: "), nl,
    read(X), nl,
    write("Enter second number: "),nl,
    read(Y),nl,
    Power is X^Y,
    Mul is X*Y,
    Add is X+Y,
    Subtract is X-Y,
    Remainder is X mod Y.
