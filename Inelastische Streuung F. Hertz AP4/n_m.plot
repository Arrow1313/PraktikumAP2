set xlabel "Beschleunigungsspannung/V"
set ylabel "Anodenstrom/nA"

set xtics 2
set mxtics 5

set key left top

set sample 100000

plot "n.dat" w l title "Messdaten", "n.dat" with xyerrorbars title "Messdaten alle 2V", "n_m.dat" with xyerrorbars title "Gemessene Maxima"

set terminal postscript eps enhanced color font 'Helvetica,10'

set output "n_m.eps"

replot 

!epstopdf n_m.eps
