reset

set xrange[-0.65:0.65]
#set yrange[-0.001:1.0172]

set xlabel "Winkel/Grad"
set ylabel "Intensitaetsverhältniss"

#f(x) = (sin(((3.14 * 0.2 * sin((x-0)/9))/(0.055)))/((3.14 * sin((x-0)/9) * 0.2)/(0.055)))**2
f(x) = (sin(pi * 0.2 * sin(pi*(x-0.005)/180)/0.000523598)/((pi * sin(pi*(x-0.005)/180) * 0.2)/0.000523598))**2
g(x) = (sin(pi * 0.2 * sin(pi*(x-0.005)/180)/0.0006328)/((pi * sin(pi*(x-0.005)/180) * 0.2)/0.0006328))**2
set sample 1000000

#fit [0:14] g(x) "a_1.dat" using 1:2:3 via a

set xtics 0.1
#smooth csplines
plot "a_1.dat" using 1:2:(pi/180*$3):4 with xyerrorbars title "Messdaten" , g(x) title "Theorie angegebene Wellenlaenge", f(x) title "Theorie gemessene Wellenlaenge"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_1.eps"

replot 

! epstopdf a_1.eps
