#set xrange[-50:1100]
#set yrange[0:0.04]

set xlabel "Frequenz/(1/s)"
set ylabel "Phasenverschiebung"

plot "aufgabe_3.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "aufgabe_3.eps"

replot 

!epstopdf aufgabe_3.eps
