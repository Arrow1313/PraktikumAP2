#set xrange[-0.005:0.02]
#set yrange[0:0.04]

set xlabel "Frequenz/(1/s)"
set ylabel "U_a/U_e"

plot "teil_5.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "teil_5.eps"

replot 

!epstopdf teil_5.eps
