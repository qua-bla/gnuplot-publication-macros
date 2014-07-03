set xrange [-0.5:0.5]

set key right bottom
set key width 2

set xlabel '\X{Label for $x$ axis g}'
set ylabel '\Y{Label for $y$ axis g}'

set xrange [-4:]
    
plot for [i=6:1:-1] i*x title sprintf('Func. $%ix$', i)

