project_name="gnuplot-publication-macros"

function rtex() {
    cmd="pdflatex -shell-escape -interaction=nonstopmode $@"
    echo $cmd
    $cmd > /dev/null
}
