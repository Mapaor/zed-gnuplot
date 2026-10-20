; Only indent IFs with braces
[
  (cmd_do "{" @indent)
  (cmd_if "{" @indent)
  (cmd_while "{" @indent)
]

[
  (cmd_do "}" @outdent)
  (cmd_if "}" @outdent)
  (cmd_while "}" @outdent)
]

; Align an else clause with its if
(cmd_if) @start.if

; Indent commands inside set/unset multiplot.
; In gnuplot the `end` of a multiplot is optional
(multiplot_block
  (cmd_set) @start @start.multiplot
  (cmd_unset)? @end) @indent
