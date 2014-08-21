#set xrange[0:0.18]
#set yrange[0:0.04]

set ylabel "Magnetische Flussdichte[T]"
set xlabel "Position[m]"

plot "aufgabe_4.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "aufgabe_4.eps"

replot 

!epstopdf aufgabe_4.eps
