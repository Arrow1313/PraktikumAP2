set xlabel "U_{S}/V"
set ylabel "S/mm"

f(x)=m*x+b

fit f(x) "b_2.dat" using 1:2:4 via m,b

plot "b_2.dat" with xyerrorbars title "Daten der ersten Messung", f(x) title "Regressionsgerade der ersten Messung"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "b_2.eps"
replot 

!epstopdf b_2.eps
