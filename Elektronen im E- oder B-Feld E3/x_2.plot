set xlabel "U_{D_{12}}/V"
set ylabel "S/mm"

f(x)=m*x+b

fit f(x) "x_2.dat" using 1:2:4 via m,b

plot "x_2.dat" with xyerrorbars title "Daten der zweiten Messung", f(x) title "Regressionsgerade der zweiten Messung"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "x_2.eps"
replot 

!epstopdf x_2.eps
