set yrange[-0.002:0.0245]
set xrange[0:0.02]
set mxtics 5
set mytics 5
set xlabel "1/U_A^{1/2}/(1/V^{1/2})"
set ylabel "Druchmesser/m"

f(x) = m*x+b

fit f(x) "kreis_1.dat" using 1:2:4 via m,b

set key left top

plot "kreis_1.dat" with xyerrorbars title "Messdaten", f(x) title "Regressionsgerade"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "kreis_1.eps"
replot 

!epstopdf kreis_1.eps

