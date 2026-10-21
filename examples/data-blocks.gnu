# Data rows should not be indented (they are not code)
$POINTS << EOD
0 0
1 1
2 4
3 9
EOD

plot $POINTS using 1:2 with linespoints title "inline data"
pause mouse close
