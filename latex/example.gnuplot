set xrange [-0.5:0.5]

set key right bottom
set key width 2

set xlabel '\X{Label for $x$ axis g}'
set ylabel '\Y{Label for $y$ axis g}'
    
plot for [i=1:6] i*x**i title sprintf('Func. $x^%i$', i)

