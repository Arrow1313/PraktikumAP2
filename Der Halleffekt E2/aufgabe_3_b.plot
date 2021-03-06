#set xrange[-0.005:0.02]
#set yrange[0:0.04]

set xlabel "Magnetische Flussdichte[T]"
set ylabel "Hall-Spannung[V]"

f(x)=m*x+b

fit f(x) "aufgabe_3_b.dat" using 1:2 via m,b

plot "aufgabe_3_b.dat" with xyerrorbars title "Messdaten", f(x) title "Regressionsgerade"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "aufgabe_3_b.eps"

replot 

!epstopdf aufgabe_3_b.eps
