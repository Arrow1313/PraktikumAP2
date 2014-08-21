#set xrange[-0.005:0.02]
#set yrange[0:0.04]

set xlabel "Hall Spannung[V]"
set ylabel "Hall Strom[V]"

f(x)=m*x+b

fit f(x) "aufgabe_3_e_m.dat" using 1:2 via m,b

plot "aufgabe_3_e_m.dat" with xyerrorbars title "Messdaten", f(x) title "Regressionsgerade"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "aufgabe_3_e_m.eps"

replot 

!epstopdf aufgabe_3_e_m.eps
