#set xrange[-50:1100]
#set yrange[0:0.04]

set xtics 1 format " "
set grid

set xlabel "Auslenkung/^o"
set ylabel "Intensitaet"

plot "aufgabe_3.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "aufgabe_3.eps"

replot 

!epstopdf aufgabe_3.eps