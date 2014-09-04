#set xrange[0:0.008]
#set yrange[-0.005:0.0172]

set xlabel "Position/cm"
set ylabel "Intensitaet/A"

plot "a_2_o.dat" with xyerrorbars title "Messdaten"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_2_o.eps"

replot 

! epstopdf a_2_o.eps
