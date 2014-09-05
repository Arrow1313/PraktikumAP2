#set xrange[-150:150]
#set yrange[-0.005:0.0172]

set xlabel "Abstand/cm"
set ylabel "Intensitaet/ {/Symbol m}A"

f(x)= a*exp(b*x) +c
fit f(x) "a_3_A.dat" using 1:2:4 via a,b,c
plot f(x), "a_3_A.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_3_A.eps"

replot 

! epstopdf a_3_A.eps
