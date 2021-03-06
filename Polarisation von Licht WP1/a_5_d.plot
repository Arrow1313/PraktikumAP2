#set xrange[0:0.008]
#set yrange[-0.005:0.0172]

set xlabel "Winkel/Grad"
set ylabel "Spannung/mV"

set samples 10000
a=14.35
#A(x)=9.5+10*(1+atan(x)/pi)
b=0.02
B(x)= 0.0117*(1+atan(x)/pi)
#C(x)= 87 +(1+atan(x)/pi)
c=88.5
#D(x) = 2*(1+atan(x)/pi)
d=1.02
#f(x) = A(a)*((cos(B(b)*(x-C(c))))**2)+D(d)
f(x) = a*((cos(B(b)*(x-c)))**2)+d

fit f(x) "a_1.dat" using 1:2:3 via b

plot "a_5_d.dat" with xyerrorbars title "Messdaten", f(x) title "Regression"

set terminal postscript eps enhanced color font 'Helvetica,10'
set output "a_5_d.eps"

replot 

! epstopdf a_5_d.eps
