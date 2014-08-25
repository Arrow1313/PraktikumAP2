set xlabel "U_{D_{34}}/V"
set ylabel "S/mm"

f(x)=m*x+b

fit f(x) "y_2.dat" using 1:2:4 via m,b

plot "y_2.dat" with xyerrorbars title "Daten der ersten Messung", f(x) title "Regressionsgerade der ersten Messung"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "y_2.eps"
replot 

!epstopdf y_2.eps
