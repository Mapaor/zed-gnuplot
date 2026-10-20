("(" @open ")" @close)
("[" @open "]" @close)
("{" @open "}" @close)

; Quote delimiters are childrens of string_literal.
; We need to exclude quotes from rainbow bracket colors.

; Double quotes
((string_literal
  "\"" @open
  "\"" @close)
 (#set! rainbow.exclude))

; Single quotes
((string_literal
  "'" @open
  "'" @close)
 (#set! rainbow.exclude))
