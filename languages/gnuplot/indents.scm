; Align an else clause with its if
; Note: brace indentation is handled in config.toml (so that every if/else can indent independently)
(cmd_if) @start.if

; Indent commands inside set multiplot - unset multiplot.
; In gnuplot the `end` of a multiplot is optional
(multiplot_block
  (cmd_set) @start @start.multiplot
  (cmd_unset)? @end) @indent
