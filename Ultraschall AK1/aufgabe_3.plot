#set xrange[-60:60]
#set yrange[0:40]

set sample 10000
set xtics 10
set grid

set xlabel "Auslenkung/Grad"
set ylabel "Intensitaet"

b=0.03; c=25; d=0.2; e=-1; f=8

f(x) = exp(-(b*(x-e))**2)*c*(cos(d*(x-e)))**2+f
fit f(x) "aufgabe_3.dat" using 1:2:4 via b,c,d,e,f
plot f(x), "aufgabe_3.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "aufgabe_3.eps"

replot 

!epstopdf aufgabe_3.eps
