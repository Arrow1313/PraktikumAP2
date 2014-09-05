set xrange[0:4]
set yrange[20:200]

set xlabel "Abstand/cm"
set ylabel "Intensitaet/ {/Symbol m}A"

a=-100; b=-0.9; c=0.7; d=177.5
f(x)= a*exp(b*(x-c)) +d
#fit f(x) "a_3_A.dat" using 1:2:4 via a,b,c,d
plot f(x), "a_3_B.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_3_B.eps"

replot 

! epstopdf a_3_B.eps
