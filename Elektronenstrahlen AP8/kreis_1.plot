set xlabel "U_A^{(-1/2)}/(1/V)"
set ylabel "Druchmesser/m"

f(x) = m*x+b

fit f(x) "kreis_1.dat" using 1:2:4 via m,b

plot "kreis_1.dat" with xyerrorbars title "Messdaten", f(x) title "Regressionsgerade"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "kreis_1.eps"
replot 

!epstopdf kreis_1.eps

