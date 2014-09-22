set yrange [-0.5:11]
set xlabel "Beschleunigungsspannung/V"
set ylabel "Anodenstrom/nA"

set key top left

set ytics 1
set xtics 1
set mxtics 5
show mxtics

set sample 100000

plot "q_a.dat" smooth csplines title "Messdaten mit csplines", "q.dat" with xyerrorbars title "Messdaten ohne csplines", "q_m.dat" with xyerrorbars title "Gemessene Maxima"

set terminal postscript eps enhanced color font 'Helvetica,10'

set output "q_t.eps"

replot 

!epstopdf q_t.eps
