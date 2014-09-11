#set xrange[0:0.008]
#set yrange[-0.005:0.0172]

set xlabel "Winkel/Grad"
set ylabel "Intensitaetsverhältniss"

f(x) = (sin(((3.14 * 0.2 * sin(x))/(0.12)))/((3.14 * sin(x) * 0.2)/(0.12)))**2
g(x) = d * cos(x*e+f)**2

a = 0.00006
b = 50.8


plot "a_1.dat" with xyerrorbars title "Messdaten" , f(x) title "Regressionskurve"

#set terminal postscript eps enhanced color font 'Helvetica,10'
#set output "a_1.eps"

#replot 

#! epstopdf a_1.eps
