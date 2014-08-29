#set xrange[-50:1100]
#set yrange[0:0.04]

set xlabel "Frequenz/(1/s)"
set ylabel "Phasenverschiebung"

plot "teil3_2.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "teil3_2.eps"

replot 

!epstopdf teil3_2.eps
