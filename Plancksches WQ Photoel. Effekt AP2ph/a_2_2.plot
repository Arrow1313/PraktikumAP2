set xrange[-1:6]
#set yrange[-0.005:0.0172]

set xlabel "Nummer der Messung"
set ylabel "Diodenstrom/A"

f(x) = b

b=0.0000000634

#fit f(x) "a_2_2.dat" via b

g(x) = 5.51171792692048E-008
h(x) = 7.18071540641284E-008


plot "a_2_2.dat" with errorbars title "Messdaten", f(x) title "Regressionsgerade", g(x) title "Untere Fehlergrenze", h(x) title "Obere Fehlergrenze"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_2_2.eps"

replot 

! epstopdf a_2_2.eps
