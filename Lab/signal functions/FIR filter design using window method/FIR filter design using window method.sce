// To Design an Low Pass FIR Filter
// Filter Length =5, Order = 4
//Window = Rectangular Window

clc ;
clear ;
xdel ( winsid () ) ;
fc = input (" Enter Analog cut off freq in Hz=")
fs = input (" Enter Analog sampling Freq . in Hz=")
 M = input (" Enter o r d e r of f i l t e r =")
 w = (2* %pi ) *( fc / fs );
disp (w , "Digital cut off frequency in radians . c y c l e s /samples " ) ;
 wc = w/ %pi ;
 disp ( wc , " Normalized digital cut off frequency in cycles/ samples " ) ;
[wft,wfm,fr]=wfir("lp",M+1,[wc/2,0],"re",[0,0]) ;
 disp ( wft , "Impulse Response of LPF FIR Filter: h [ n]=" );
 // Plotting the Magnitude Response of LPF FIR Filter
 subplot (2 ,1 ,1)

 plot (2* fr , wfm )
 xlabel ( " Normalized Digital Frequency−−−> " )
 ylabel ( " Magnitude |H(w)|= " )
 title ( " Magnitude R e s po n s e of FIR LPF " )
 xgrid (1)
 subplot (2 ,1 ,2)
 plot ( fr * fs , wfm )
 xlabel ( " Analog Frequency in Hz f −−−> " )
 ylabel ( " Magnitude |H(w)|= " )
 title ( " Magnitude Response of FIR LPF " )
 xgrid (1)
 
 //Example:
 // Enter Analog cut off freq . i n Hz= 250
 // Enter Analog sampling Freq . i n Hz= 2000
 // Enter o r d e r of f i l t e r = 4
  // Digital cut off frequency in radians . cycles/sample 
 // 0 . 7 8 5 3 9 8 2
 // Normalized digital cut off frequency in cycles /
//samples
 // 0 . 2 5
 // Impulse Response of LPF FIR Filter : h [ n]=
 // 0 . 1 5 9 1 5 4 9 0 . 2 2 5 0 7 9 1 0 . 2 5 0 . 2 2 5 0 7 9 1
//0 . 1 5 9 1 5 4 9
