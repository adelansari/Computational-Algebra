%%
%{
Engineering Computation & Linear Algebra
Assignment#3
Problem#2
Adel Ali Ansari
U00038673
%}

clear all
clc

%% e^x function and values of x
%  Declear the exponantial function by using Maclaurin serie
%  Using only the first 7 terms of the trancation
%  The function y is approximate value for the exponential function
x= -0.5:0.1:0.5;
y= 1 + x + (x.^2)./2 + (x.^3)./6 + (x.^4)./24 + (x.^5)./120 + (x.^6)./720;

%  Calculate the Trunc. Error 
TE= exp(x)-y;

%  Declear the vector z
z=[x;y;exp(x);TE];

%% Creating output file
file= fopen('TRUNC','w');

%  Printing the title of the output table
fprintf(file,'  X\t\t Approx. Value\t    exp(x)\t\t Relative Error\n');
fprintf(file,'_______________________________________________________\n');

%  Printing the values of the vector z in the output file
fprintf(file,'%4.1f\t  %9.6f\t\t  %9.6f\t\t   %9.6f\n',z);

%  Close the output file
fclose(file);
