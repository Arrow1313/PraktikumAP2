set xrange[-80:80]
set yrange[-80:80]

set polar
set angles degrees #set gnuplot on degrees instead of radians

set style line 10 lt 1 lc 0 lw 0.3 #redefine a new line style for the grid

set grid polar 10 #set the grid to be displayed every 10 degrees
set grid 5 ls 5

unset border
unset xtics
unset ytics

 
set label 1 "270" at 80*cos(0*180)-0.025,80*sin(0*180) font "Arial,10"  
set label 2 "315" at 80*cos(0.25*180)-0.025,80*sin(0.25*180) font "Arial,10"  
set label 3 "0" at 80*cos(0.5*180)-0.025,80*sin(0.5*180) font "Arial,10"  
set label 4 "45" at 80*cos(0.75*180)-0.025,80*sin(0.75*180) font "Arial,10"  
set label 5 "90" at 80*cos(1*180)-0.025,80*sin(1*180) font "Arial,10"  
set label 6 "135" at 80*cos(1.25*180)-0.025,80*sin(1.25*180) font "Arial,10"  
set label 7 "180" at 80*cos(1.5*180)-0.025,80*sin(1.5*180) font "Arial,10"  
set label 8 "225" at 80*cos(1.75*180)-0.025,80*sin(1.75*180) font "Arial,10"  

set size 0.75,1

#set xlabel "Winkel/Grad"
#set ylabel "Spannung/mV"

plot "a_5_b.dat" title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_5_b.eps"

replot 

! epstopdf a_5_b.eps
