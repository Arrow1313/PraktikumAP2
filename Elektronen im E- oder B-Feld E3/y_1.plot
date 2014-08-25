set xlabel "U_{D_{34}}/V"
set ylabel "S/mm"

f(x)=m*x+b

fit f(x) "y_1.dat" using 1:2:4 via m,b

plot "y_1.dat" with xyerrorbars title "Daten der ersten Messung", f(x) title "Regressionsgerade der ersten Messung"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "y_1.eps"
replot 

!epstopdf y_1.eps
