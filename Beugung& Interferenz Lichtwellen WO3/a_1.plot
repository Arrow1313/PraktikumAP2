#set xrange[0:0.008]
#set yrange[-0.005:0.0172]

set xlabel "Winkel/Grad"
set ylabel "Intensitaetsverhältniss"

#f(x) = (sin(((3.14 * 0.2 * sin((x-0)/9))/(0.055)))/((3.14 * sin((x-0)/9) * 0.2)/(0.055)))**2
g(x) = (sin(((3.14 * 0.2 * sin((x-0)/7.5))/(0.06328)))/((3.14 * sin((x-0)/7.5) * 0.2)/(0.06328)))**2

set sample 100000

#fit [1:14] g(x) "a_1.dat" using 1:2:3 via a,b,c

#set xtics 1

plot "a_1.dat" with xyerrorbars title "Messdaten", g(x) title "Fit"#, f(x) title "Regressionskurve"

#set terminal postscript eps enhanced color font 'Helvetica,10'
#set output "a_1.eps"

#replot 

#! epstopdf a_1.eps
