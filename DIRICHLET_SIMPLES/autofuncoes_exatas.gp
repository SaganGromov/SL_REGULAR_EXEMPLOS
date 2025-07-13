reset

# Set terminal to PNG and output file
set terminal pngcairo size 1000,700 enhanced font 'Arial,14'
set output 'sin_functions.png'

# Plot settings
set title 'Autofunções sen((n+1)πx)/((n+1)π), n = 0 a 6'
set xlabel 'x'
set ylabel 'sin((n+1)πx)/((n+1)π)'
set xrange [0:1]
set grid
set key outside right top box

# Define pi explicitly in case it's not already available
pi = 3.141592653589793

# Plot all functions with different styles
plot \
    sin(1*pi*x)/(1*pi)     w l lw 2 dt 2 lc rgb "blue"   t 'n=0', \
    sin(2*pi*x)/(2*pi)     w l lw 2 dt 3 lc rgb "green"  t 'n=1', \
    sin(3*pi*x)/(3*pi)     w l lw 2 dt 4 lc rgb "orange" t 'n=2', \
    sin(4*pi*x)/(4*pi)     w l lw 2 dt 5 lc rgb "purple" t 'n=3', \
    sin(5*pi*x)/(5*pi)     w l lw 2 dt 6 lc rgb "brown"  t 'n=4', \
    sin(6*pi*x)/(6*pi)     w l lw 2 dt 7 lc rgb "cyan"   t 'n=5', \
    sin(7*pi*x)/(7*pi)     w l lw 2 dt 7 lc rgb "red"   t 'n=6'

# Finish output
unset output
reset

