#set xrange[-150:150]
#set yrange[-0.005:0.0172]

set xlabel "Winkel/^o"
set ylabel "Intensitaet/A"

f(x) = m*(x+b)**2

b = 70
m = 99

fit f(x) "a_6_p.dat" using 1:2 via m,b

plot "a_6_p.dat" with xyerrorbars title "Messdaten", f(x) title "Regression"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_6_p.eps"

replot 

! epstopdf a_6_p.eps
