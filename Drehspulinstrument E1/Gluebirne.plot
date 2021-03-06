set xrange[0:0.008]
set yrange[-0.005:0.0172]

set xlabel "Strom[A]"
set ylabel "Spannung[V]"

plot "Gluebirne.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "Gluebirne.pdf"

replot 
