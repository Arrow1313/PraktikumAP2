set xlabel "1/U_A^{1/2}/(1/V^{1/2})"
set ylabel "Druchmesser/m"
set xrange[0:0.02]
set yrange[0:0.045]
set mxtics 5
set mytics 5
set key left top
f(x) = m*x+b

fit f(x) "kreis_2.dat" using 1:2:4 via m,b

plot "kreis_2.dat" with xyerrorbars title "Messdaten", f(x) title "Regressionsgerade"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "kreis_2.eps"
replot 

!epstopdf kreis_2.eps

