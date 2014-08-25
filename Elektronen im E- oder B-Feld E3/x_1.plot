set xlabel "U_{D_{12}}/V"
set ylabel "S/mm"

f(x)=m*x+b

fit f(x) "x_1.dat" using 1:2:4 via m,b

plot "x_1.dat" with xyerrorbars title "Daten der ersten Messung", f(x) title "Regressionsgerade der ersten Messung"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "x_1.eps"
replot 

!epstopdf x_1.eps
