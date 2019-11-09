%%
%{
Engineering Computation & Linear Algebra
Assignment#3
Problem#3
Adel Ali Ansari
U00038673
%}

clear all
clc

%% Reading resistors and voltages and calculating currents of a four-mesh circuit
R=input('Enter the values of the resistors in kilo-ohm,[R1,...,R9]= ');
V=input('Enter the values of the voltages in volts,[V1,V2]= ');

%  Describing the resistive matrix R
R=[R(8)+R(5)+R(3), -R(5), 0, -R(3);
    -R(5), R(5)+R(7)+R(1)+R(4), -R(4), 0;
    0, -R(4), R(4)+R(2)+R(6), -R(6);
    -R(3), 0, -R(6), R(3)+R(6)+R(9)];

%  Describing the voltage matrix V
V=[V(1);
    0;
    0;
    V(2)];

%  Printing the inputs to the output file
file= fopen('mesh','w');
fprintf(file,'R(k ohm)=\n');
fprintf(file,'\t%6.2f\t%6.2f\t%6.2f\t%6.2f\n',R);
fprintf(file,'\nV(volt)=\n');
fprintf(file,'\t%5.2f\n',V);

%  Solving I by matrix division method

I1=R\V;

%  Printing I1 to the output file
fprintf(file,'\nI(mA,using matrix division method)=\n');
fprintf(file,'\t%5.2f\n',I1);

%  Finding R inverse
Rinv=inv(R);

%  Sending R inverse to the output file
fprintf(file,'\nRinv(mS)=\n');
fprintf(file,'\t%5.2f\t%5.2f\t%5.2f\t%5.2f\n',Rinv);

%  Solving I by using [I = Rinv*V]
I2=Rinv*V;

%  Printing I2 to the output file
fprintf(file,'\nI(mA,using [I = Rinv*V])=\n');
fprintf(file,'\t%5.2f\n',I2);

%  Closing the output file
fclose(file);

%  Massage for the user
disp(' ')
disp('The outputs of the circuit is in a file called "mesh".')