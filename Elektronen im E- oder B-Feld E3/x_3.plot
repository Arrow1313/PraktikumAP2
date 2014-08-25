set xlabel "U_{D_{12}}/V"
set ylabel "S/mm"

f(x)=m*x+b

fit f(x) "x_3.dat" using 1:2:4 via m,b

plot "x_3.dat" with xyerrorbars title "Daten der dritten Messung", f(x) title "Regressionsgerade der dritten Messung"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "x_3.eps"
replot 

!epstopdf x_3.eps
