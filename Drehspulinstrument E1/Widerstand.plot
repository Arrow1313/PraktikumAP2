set xrange[0:0.008]
set yrange[0.2:1.55]

set xlabel "Strom[A]"
set ylabel "Spannung[V]"

f(x)= m*x+b

fit f(x) "Wiederstand.dat" using 1:2 via m,b

plot "Wiederstand.dat" with xyerrorbars title "Messdaten", f(x) title "Regressionsgerade"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "Wiederstand.pdf"

replot 

