#set xrange[0:0.008]
#set yrange[-0.005:0.0172]

set xlabel "Frequenz/Hz"
set ylabel "Stopspannung/U"

f(x) = m*x+b

m=44
b=-1.19

fit f(x) "a_1_1.dat" using 1:2:4 via m,b

plot "a_1_1.dat" with xyerrorbars title "Messdaten", f(x) title "Regressionsgerade"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_1_1.eps"

replot 

! epstopdf a_1_1.eps
