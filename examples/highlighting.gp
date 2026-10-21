# Syntax highlighting of commands, options, functions, strings and operators
set title "Tree-sitter Gnuplot highlighting"
set xlabel "x"
set ylabel "f(x)"
set samples 200

sinc(x) = sin(x) / x
gaussian(x) = exp(-(x ** 2))

plot [-2*pi:2*pi] \
    sinc(x) with lines lw 2 lc rgb "blue" title "user function", \
    gaussian(x) with lines dt 2 title "Gaussian"
pause mouse close

print sprintf("pi = %.3f; sqrt(4) = %.1f", pi, sqrt(4))

# Escaping of characters
double_quoted = "A quoted word with an escaped quote: \"hello\""
single_quoted = 'Gnuplot''s doubled single quote'

# Square brackets can be indexes, ranges and array declarations. Braces can form complex values.
array values[3] = [1, 2, 3]
complex_value = {1, 2}
result = (values[1] + values[2]) * {1, 0}
