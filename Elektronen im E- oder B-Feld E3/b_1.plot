set xlabel "U_{S}/V"
set ylabel "S/mm"

f(x)=m*x+b

fit f(x) "b_1.dat" using 1:2:4 via m,b

plot "b_1.dat" with xyerrorbars title "Daten der ersten Messung", f(x) title "Regressionsgerade der ersten Messung"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "b_1.eps"
replot 

!epstopdf b_1.eps
