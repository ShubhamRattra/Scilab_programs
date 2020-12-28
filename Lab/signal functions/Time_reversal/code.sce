//time reversal

clear;clc;close;
n = input('Enter the range of sequance:= ');
x = input('Enter the input sequance:= ');
subplot(2,1,1);
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [-5,0;5,5];
plot2d3(n,x);
title('Original signal');
subplot(2,1,2);
a = gca();
a.x_location = "origin";
a.y_location = "origin";
a.data_bounds = [-5,0;5,5];
plot2d3(-n,x);
title('Time Reversed signal');
