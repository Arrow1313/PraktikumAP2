set xrange[400:1500]
#set yrange[0:0.04]

set xlabel "Frequenz/(1/s)"
set ylabel "U_a/U_e"

plot "teil_4.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "teil_4.eps"

replot 

!epstopdf teil_4.eps
