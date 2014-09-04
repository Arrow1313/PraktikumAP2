#set xrange[-150:150]
#set yrange[-0.005:0.0172]

set xlabel "Winkel/^o"
set ylabel "Intensitaet/A"

plot "a_6.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_6.eps"

replot 

! epstopdf a_6.eps
