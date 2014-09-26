set yrange[0.012:0.0245]

set xlabel "U_A^{(-1/2)}/(1/V)"
set ylabel "Druchmesser/m"

f(x) = m*x+b

fit f(x) "kreis_1_r.dat" using 1:2:4 via m,b

set key left top

plot "kreis_1_r.dat" with xyerrorbars title "Messdaten", f(x) title "Regressionsgerade"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "kreis_1_r.eps"
replot 

!epstopdf kreis_1_r.eps

