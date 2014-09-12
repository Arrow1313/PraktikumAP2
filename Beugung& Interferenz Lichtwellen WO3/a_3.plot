#set xrange[0:0.008]
#set yrange[-0.005:0.0172]

set xlabel "Winkel/Grad"
set ylabel "Intensitaetsverhältniss"

#f(x) = m * (cos(x*a+b)**2)+c

#a = 0.0001
set sample 10000
#fit f(x) "a_3.dat" using 1:2:3 via m,a,b,c
f(x) = (sin(pi*0.25*sin(pi*x/180)/0.0005918887)*cos(pi*0.75*sin(pi*x/180)/0.0005918887)/(pi*0.25*sin(pi*x/180)/0.0005918887))**2

g(x) = (sin(pi*0.25*sin(pi*x/180)/0.0006328)*cos(pi*0.75*sin(pi*x/180)/0.0006328)/(pi*0.25*sin(pi*x/180)/0.0006328))**2

F(x)=4.75*f(x)
G(x)=4.75*g(x)
set xtics 0.1

#smooth csplines
plot "a_3.dat" with xyerrorbars title "Messdaten", g(x) ls 1 lt rgb "green" lw 2 title "g(x) Theorie angegebene Wellenlaenge", f(x) ls 1 lt rgb "red" lw 2 title "f(x) Theorie gemessene Wellenlaenge", G(x) ls 1 lt rgb "orange" lw 2 title "4.75*g(x)", F(x) ls 1 lt rgb "blue" lw 2 title "4.75*f(x)"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_3.eps"

replot 

! epstopdf a_3.eps
