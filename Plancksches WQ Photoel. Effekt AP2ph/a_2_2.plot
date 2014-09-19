set xrange[-1:6]
#set yrange[-0.005:0.0172]

set xlabel "Farbe des Lichtes"
set ylabel "Quantenausbeute/10^{-6}"
#{/Symbol m}A

f(x) = b

b=0.0000000634

fit f(x) "a_2_2.dat" using 0:1:2 via b

g(x) = b*0.9
h(x) = b*1.1
set xtic 1

plot "a_2_2.dat" using 0:1:2:xtic(3) with errorbars title "Messdaten", f(x) title "Regressionsgerade", g(x) title "Untere Fehlergrenze 10%", h(x) title "Obere Fehlergrenze 10%"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_2_2.eps"

replot 

! epstopdf a_2_2.eps
