//find the correlation of signals

clc ;
clear ;
close ;
x = input('Enter the Input Sequence =') // x=[1 2 3 1 ]
m = length(x);
xl = input('Enter the lower index of Input Sequence= ' )// 0
xh = xl +m -1;
n = xl:1:xh;
subplot(2,2,1);
a=gca();
a.x_location ='origin';
a.y_location ='origin';
plot2d3('gnn',n,x) ;
title('Input Sequence x[n]');
xlabel('Samples n');
ylabel('Amplitude');

h=input ('Enter the Impulse response Sequence = ') ; //h=[1 2 1 1 ]
l=length(h);
hl=input('Enter the lower index of impulse response sequence = ') ; // 0
hh = hl +l -1;
g = hl:1:hh ;
subplot(2 ,2 ,2) ;
a = gca() ;
a.x_location ='origin';
a.y_location ='origin';
plot2d3 ('gnn',g,h) ;
title ('Impulse Response Sequence h[n]') ;
xlabel ('Samples n') ;
ylabel ('Amplitude') ;

z = xcorr (x , h ) ;
disp('Correlation of Sequence y(n)= ');
disp(z);
nx = xl + xl ;
nh = xh + xh ;
r = nx : nh ;
subplot(2,2,4);
a=gca();
a.x_location = 'origin';
a.y_location = "origin";
plot ('gnn',r,z) ;
title ('Output of Correlation of Sequence');
xlabel('Samples n');
ylabel('Amplitude');
