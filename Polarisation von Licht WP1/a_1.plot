#set xrange[0:0.008]
#set yrange[-0.005:0.0172]

set xlabel "Winkel/Grad"
set ylabel "Intensitaet/A"

f(x) = m * (cos(x*a+b)**2)+c

a = 0.0001

fit f(x) "a_1.dat" using 1:2:3 via m,a,b,c

plot "a_1.dat" with xyerrorbars title "Messdaten", f(x) title "Regressionskurve"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_1.eps"

replot 

! epstopdf a_1.eps
