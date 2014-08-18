set xrange[0:85]
set yrange[0.55:0.8]

set xlabel "Strom[A]"
set ylabel "Spannung[V]"

plot "Diode.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "Diode.pdf"

replot 
