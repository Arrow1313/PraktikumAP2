#set xrange[-0.005:0.02]
#set yrange[0:0.04]

set xlabel "Magnetische Flussdichte[T]"
set ylabel "Hall Spannung[V]"

f(x)=m*x+b

fit f(x) "test.dat" using 1:2 via m,b

plot "test.dat" with xyerrorbars title "Messdaten", f(x) title "Regressionsgerade"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "test.eps"

replot 

!epstopdf test.eps
