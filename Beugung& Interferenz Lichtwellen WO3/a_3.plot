#set xrange[0:0.008]
#set yrange[-0.005:0.0172]

set xlabel "Winkel/Grad"
set ylabel "Intensitaetsverhältniss"

#f(x) = m * (cos(x*a+b)**2)+c

#a = 0.0001
set sample 10000
#fit f(x) "a_3.dat" using 1:2:3 via m,a,b,c
f(x) = (sin(pi*0.25*sin(pi*x/180)/0.0005235977)*cos(pi*0.75*sin(pi*x/180)/0.0005235977)/(pi*0.25*sin(pi*x/180)/0.0005235977))**2

g(x) = (sin(pi*0.25*sin(pi*x/180)/0.0006328)*cos(pi*0.75*sin(pi*x/180)/0.0006328)/(pi*0.25*sin(pi*x/180)/0.0006328))**2

set xtics 0.1

#smooth csplines
plot "a_3.dat" with xyerrorbars title "Messdaten", f(x) title "Theorie gemessene Wellenlänge", g(x) title "Theorie angegebene Wellenlänge"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_3.eps"

replot 

! epstopdf a_3.eps
