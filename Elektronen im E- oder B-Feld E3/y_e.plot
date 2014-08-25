set xlabel "U_{D_{12}}"
set ylabel "S/m"

f(x)=m*x+b
h(x)=n*x+c
g(x)=o*x+d

fit f(x) "x_1.dat" using 1:2 via m,b
fit h(x) "x_2.dat" using 1:2 via n,c
fit g(x) "x_3.dat" using 1:2 via o,d

plot "x_1.dat" with xyerrorbars title "Daten der ersten Messung", f(x) title "Regressionsgerade der ersten Messung", \
	 "x_1.dat" with xyerrorbars title "Daten der zweiten Messung", f(x) title "Regressionsgerade der zweiten Messung", \
	 "x_1.dat" with xyerrorbars title "Daten der dritten Messung", f(x) title "Regressionsgerade der dritten Messung"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "x_e.eps"
replot 

!epstopdf x_e.eps
