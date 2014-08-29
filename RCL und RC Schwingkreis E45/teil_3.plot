set xrange[-50:1100]
#set yrange[0:0.04]

set xlabel "Frequenz/(1/s)"
set ylabel "U_a/U_e"

plot "teil_3.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "teil_3.eps"

replot 

!epstopdf teil_3.eps
