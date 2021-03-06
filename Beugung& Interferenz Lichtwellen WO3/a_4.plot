#set xrange[0:0.008]
#set yrange[-0.005:0.0172]

set xlabel "Winkel/Grad"
set ylabel "Intensitaetsverhältniss"

#f(x) = m * (cos(x*a+b)**2)+c
set sample 10000
#a = 0.0001
#f(x) = (sin(pi*0.1*sin(x)/(2*0.0006328))*sin(21*pi*0.1*sin(x)/0.0006328)/(pi*0.1*sin(x)*sin(pi*0.1*sin(x)/0.0006328)/(2*0.0006328)))**2
#fit f(x) "a_3.dat" using 1:2:3 via m,a,b,c

plot "a_4.dat" with xyerrorbars title "Messdaten", "a_4.dat" smooth csplines

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_4.eps"

replot 

! epstopdf a_4.eps
