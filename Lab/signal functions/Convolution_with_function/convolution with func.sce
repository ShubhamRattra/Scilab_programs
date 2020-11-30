//Convolving 2 seq in discrete time domain using convol func

clc ; clear ; close ;

x=input('ENTER THE FIRST SEQUENCE x(n): '); 
m=length(x);
h=input('ENTER THE SECOND SEQUENCE h(n): ');
n=length(h);

//x(n)
p=0:1:m-1;

subplot(3,2,1),
a = gca();
a.x_location = "origin";
a.y_location = "origin";
plot2d3('gnn',p,x)        //plot for x(n)
title('i/p sequencce x(n) is:');
xlabel('-->n');


//h(n)
q=0:1:n-1;

subplot(3,2,2),
a = gca();
a.x_location = "origin";
a.y_location = "origin";
plot2d3('gnn',q,h)         //plot for h(n)
title('i/p sequencce h(n) is:');
xlabel('-->n');

//convoluted signal
y = convol(x,h);         //finding convolution of x & h

subplot(3,1,3)
a = gca();
a.x_location = "origin";
a.y_location = "origin";
plot2d3('gnn',y);       //plot of convoluted signal
title('convolution of x(n) & h(n) is :');
xlabel('-->n');
