clear all;
A = hadamard(4);
b = eye(3);
sen = 'save';
sru = 'XXX';
save x.txt A b sen sru -ascii;
type x.txt;