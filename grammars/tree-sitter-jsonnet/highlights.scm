(id) @variable.other.jsonnet
(comment) @comment.line.jsonnet

; Literals
(null) @constant.language.jsonnet
(string) @string.quoted.double.jsonnet
(number) @constant.numeric.jsonnet
[
  (true)
  (false)
] @constant.language.boolean.jsonnet

; Keywords
"for" @keyword.control.loop.jsonnet
"in" @keyword.operator.word.jsonnet
"function" @storage.type.function.jsonnet
[
  "if"
  "then"
  "else"
] @keyword.control.conditional.jsonnet
[
  (local)
  (tailstrict)
  "function"
  "assert"
  "error"
] @keyword.control.jsonnet

[
  (dollar)
  (self)
  (super)
] @variable.language.jsonnet
((id) @variable.language.jsonnet
 (#eq? @variable.language.jsonnet "std"))

; Operators
[
  (multiplicative)
  (additive)
  (bitshift)
  (comparison)
  (equality)
  (bitand)
  (bitxor)
  (bitor)
  (and)
  (or)
  (unaryop)
] @keyword.operator.jsonnet

; Punctuation
"[" @punctuation.definition.array.begin.bracket.square.jsonnet
"]" @punctuation.definition.array.end.bracket.square.jsonnet
"{" @punctuation.definition.object.begin.bracket.curly.jsonnet
"}" @punctuation.definition.object.end.bracket.curly.jsonnet
"(" @punctuation.definition.arguments.begin.bracket.round.jsonnet
")" @punctuation.definition.arguments.end.bracket.round.jsonnet

"." @punctuation.separator.property.jsonnet
"," @punctuation.separator.comma.jsonnet
";" @punctuation.terminator.statement.jsonnet
":" @punctuation.separator.key-value.jsonnet

; `::` hides a field from the output, `:::` forces it visible.
[
  "::"
  ":::"
] @punctuation.separator.key-value.visibility.jsonnet

(field
  (fieldname) "+" @punctuation.separator.key-value.inheritance.jsonnet)

; Imports
[
  (import)
  (importstr)
] @keyword.control.import.jsonnet

; References

; Make reference same color as parameter
; (may incur performance issues on big files)
; Depends on locals.scm
((id) @variable.parameter.jsonnet
 )

((id) @entity.name.function.reference.jsonnet
 )

((id) @variable.other.jsonnet
 )
((id) @keyword.control.directive.define.jsonnet
 )

; References do not apply to static field IDs
; Workaround for `(#is-not? local)` not supported
(fieldname (id) @variable.other.member.jsonnet)
(fieldname (string
             (string_start) @markup.bold.jsonnet
             (string_content) @variable.other.member.jsonnet
             (string_end) @markup.bold.jsonnet
           ))

; But it does apply if ID in an expression
(fieldname
 ("["
  (id) @variable.parameter.jsonnet
  "]"
  ))
(fieldname
 ("["
  (id) @keyword.control.directive.define.jsonnet
  "]"
  ))

; Functions
(field
  function: (fieldname (id) @entity.name.function.jsonnet))
(field
  function: (fieldname
              (string
                (string_start) @markup.bold.jsonnet
                (string_content) @entity.name.function.jsonnet
                (string_end) @markup.bold.jsonnet
              )))
(param
  identifier: (id) @variable.parameter.jsonnet)

(bind (id) @keyword.control.directive.define.jsonnet)
(bind function: (id) @entity.name.function.jsonnet)

; Function call
(functioncall
  (fieldaccess
    last: (id) @support.other.function.jsonnet
  )?
  (fieldaccess_super
    (id) @support.other.function.jsonnet
  )?
  (id)? @support.other.function.jsonnet
  "("
  (args
    (named_argument
      (id) @variable.parameter.jsonnet
    )
  )?
  ")"
)

; Emphasize implicit plus usage
(implicit_plus
  (_ "}"? @markup.other.danger.jsonnet)
  (object
    "{" @markup.other.danger.jsonnet
  )
)

; ERROR
(ERROR) @invalid.illegal.jsonnet
