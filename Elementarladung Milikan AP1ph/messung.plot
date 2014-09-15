set xrange[0:6]
set yrange[0:3.2]

set sample 10000

set grid y
set ytics 1
set xtics 0.5
set mxtics 10
set xlabel "Ladung/(10^-19 C)"
set ylabel "Anzahl"
#set style data histogram
#set style histogram cluster gap 1
#set style fill solid noborder
set style fill solid border 3
binwidth=0.08
set boxwidth 0.5*binwidth absolute
bin(x,width)=width*floor(x/width) + binwidth/2.0
plot "messung.dat" u (bin($1,binwidth)):(1.0) notitle smooth freq with boxes
set terminal postscript eps enhanced color font 'Helvetica,10'
set output "messung.eps"

replot 

!epstopdf messung.eps
