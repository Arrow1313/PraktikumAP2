#set xrange[-150:150]
#set yrange[-0.005:0.0172]

set xlabel "Winkel/^o"
set ylabel "Intensitaet/A"

f(x)=(cos(x*b)*m)**2+d

m = 96
b = 0.03
d = 92

fit f(x) "a_4.dat" using 1:2 via m,b,d

plot "a_4.dat" with xyerrorbars title "Messdaten", f(x) title "Regression"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_4.eps"

replot 

! epstopdf a_4.eps
