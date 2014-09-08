#set xrange[0:0.008]
#set yrange[-0.005:0.0172]

set xlabel "Winkel/Grad"
set ylabel "Spannung/mV"

f(x) = m*((cos((x+b)*a))**2)+d

m = 16
a = 0.021
b = 60
d = 1

#fit f(x) "a_1.dat" using 1:2:3 via m,a

plot "a_5_d.dat" with xyerrorbars title "Messdaten", f(x) title "Regression"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_5_d.eps"

replot 

! epstopdf a_5_d.eps
