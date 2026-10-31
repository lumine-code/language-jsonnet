; Preserve the data in text blocks and multiline comments during reindent.
([(string) (comment)] @preserve
  (#is? indent.reindent true)
  (#is-not? indent.matchesCurrentRow startPosition)
  (#set! indent.force true))

; The delimiters carry the indent; every block in this language is braced.
["{" "[" "("] @indent

["}" "]" ")"] @dedent
