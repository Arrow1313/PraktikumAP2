set xrange[-1:6]
#set yrange[-0.005:0.0172]

set xlabel "Nummer der Messung"
set ylabel "Diodenstrom/A"

f(x) = b

#b=3.45083694382023E-007

fit f(x) "a_1_3.dat" via b

g(x) = 3.17755508614233E-007
h(x) = 3.72411880149814E-007


plot "a_2_2_1.dat" with errorbars title "Messdaten", f(x) title "Regressionsgerade", g(x) title "Untere Fehlergrenze", h(x) title "Obere Fehlergrenze"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_2_2_1.eps"

replot 

! epstopdf a_2_2_1.eps
