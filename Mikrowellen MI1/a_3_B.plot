#set xrange[-150:150]
#set yrange[-0.005:0.0172]

set xlabel "Abstand/cm"
set ylabel "Intensitaet/ {/Symbol m}A"

plot "a_3_B.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_3_B.eps"

replot 

! epstopdf a_3_B.eps
