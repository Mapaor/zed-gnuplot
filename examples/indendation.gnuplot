# Press ENTER after an opening brace line or a multiplot to check indentation
count = 0

while (count < 3) {
    if (count == 1) {
        print sprintf("middle iteration: %d", count)
    }
    else {
        print sprintf("iteration: %d", count)
    }

    count = count + 1
}

do for [i = 1:3] {
    if (i > 1) {
        print sprintf("loop item: %d", i)
    }
    else {
        print "first loop item"
    }
}

# Inline ifs have no block to indent
if (1) print "inline if"

# Multiplot block
set multiplot layout 1,2 title "Trigonometric functions"
    plot sin(x) title "sin(x)"
    plot cos(x) title "cos(x)"
unset multiplot
