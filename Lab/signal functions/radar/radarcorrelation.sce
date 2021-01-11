clc ;
clear ;
x =[0 1 2 3 2 1 0]; // Triangle pulse transmitted by radar
n =[ -3 -2 -1 0 1 2 3]; // Index of Triangular Pulse
D =10; // Delay amount
nd = n+ D ; // Index of Delayed Signal
y = x ; // Delayed Signal

scf () ;
subplot (2 ,1 ,1) ;
plot2d3(n,x,0.1);
title ( 'Original Transmitted Signal','color','red','fontsize',4) ;
xlabel ("Index","fontsize",2,"color","blue") ;
ylabel ("Amplitude","fontsize",2,"color","blue") ;
subplot (2 ,1 ,2) ;
plot2d3(nd,y,0.1);
title ( 'DelayedSignal','color','red','fontsize',4) ;
xlabel ("Index","fontsize",2,"color","blue") ;
ylabel ("Amplitude","fontsize",2,"color","blue") ;

w = rand (1 , length (x ) ) ; // Noise Generation
nw = nd ;
scf () ;
plot2d3(nw,w,0.1);
title ( 'Noisy Signal','color','red','fontsize',4) ;
xlabel ("Index","fontsize",2,"color","blue") ;
ylabel ("Amplitude","fontsize",2,"color","blue") ;

R = y + w; // Original Signal + Noise
nr = nw ; // Index of received signal at RADAR

nr_fold = flipdim ( nr,2 ) ;
R_fold = flipdim (R,2 ) ;
nmin =min( n ) + min ( nr_fold ) ; // Lowest index of y(n)
nmax =max( n ) + max ( nr_fold ) ; // Highest index of y(n)
n_received = nmin : nmax ;
Received_Presence = xcorr (x , R_fold ) ; // Convolution of Original signal and Received Signal in the Presence of Object(Equivalent to Correlation) //

scf () ;
subplot (2 ,1 ,1) ;
plot2d3(n_received , Received_Presence ,0.1);
title ( 'Correlation in the Presence of Object','color','red','fontsize',4) ;
xlabel ("Index","fontsize",2,"color","blue") ;
ylabel ("Correlation Value","fontsize",2,"color","blue") ;


R = w ; // only Noise Signal
nr = nw ;

nr_fold = flipdim ( nr,2 ) ;
R_fold = flipdim (R,2 ) ;
nmin =min( n ) + min ( nr_fold ) ; // Lowest index of y(n)
nmax =max( n ) + max ( nr_fold ) ; // Highest index of y(n)
n_received = nmin : nmax ;
Received_Absence = xcorr (x , R_fold ) ; // Convolution of Original transmitted signal and Received Signal in the Absence of Object(Equivalent to Correlation) //

subplot (2 ,1 ,2) ;
plot2d3(n_received , Received_Absence ,0.1);
title ( 'Correlation in the Absence of Object','color','red','fontsize',4) ;
xlabel ("Index","fontsize",2,"color","blue") ;
ylabel ("Correlation Value","fontsize",2,"color","blue") ;

