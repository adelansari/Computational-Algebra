%%
%{
Engineering Computation & Linear Algebra
Assignment#3
Problem#1
Adel Ali Ansari
U00038673
%}

clear all
clc

%% Declear the range of all x, increaments and y

x1= -8:0.1:-6;  y1= (x1)./(x1);
x2= -6:0.1:-4;  y2= abs(x2.^2 -((x2.^4)+5).^(1/2));
x3= -4:0.1:-2;  y3= (x3)./(x3);
x4= -2:0.1:4;   y4= ((x4.^2)-1)./((x4.^2)+1);
x5= 4:0.1:8;    y5= (x5)./(x5);
x6= 8:0.1:9;    y6= log(x6 + 2);
x7= 9:0.1:10;   y7= (x7)./(x7);

%  Vector x and Vector y
x = [x1 x2 x3 x4 x5 x6 x7];
y = [y1 y2 y3 y4 y5 y6 y7];

%  Plot the graph with grid
plot(x,y);
grid;

%  The title of the plot
title('The plot of the function Y');

%  The axises label
xlabel('X');
ylabel('Y');

